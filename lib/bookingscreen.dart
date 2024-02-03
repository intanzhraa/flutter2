import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:belajar_flutter/bookingscreen.dart';
import 'package:belajar_flutter/outputbookingscreen.dart';

class LatihanForm extends StatefulWidget {
  @override
  State<LatihanForm> createState() => _LatihanFormState();
}

class _LatihanFormState extends State<LatihanForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController namaController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController bookingController = TextEditingController();
  String _pilihTempatHewan = '';
  String _hargaHewan = '';
  String _imageHewan = '';

  final List<Map<String, dynamic>> hewan = [
    {
      "tempat": "Taman Melati",
      "harga": "80000",
      "image": "assets/img/melati.jpg"
    },
    {
      "tempat": "Taman Anggrek",
      "harga": "30000",
      "image": "assets/img/anggrekhitam.jpg"
    },
    {
      "tempat": "Taman Padma raksasa",
      "harga": "60000",
      "image": "assets/img/padmaraksasa.jpg"
    },
    {
      "tempat": "Taman Edelweis Jawa",
      "harga": "7000",
      "image": "assets/img/edelweisjawa.jpg"
    },
  ];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    'Booking',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: namaController,
                    decoration: InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<Map<String, dynamic>>(
                    decoration: InputDecoration(
                      labelText: 'Pilih Tempat',
                      border: OutlineInputBorder(),
                    ),
                    items: hewan.map((hewanData) {
                      return DropdownMenuItem<Map<String, dynamic>>(
                        value: hewanData,
                        child: Text("${hewanData['tempat']}"),
                      );
                    }).toList(),
                    onChanged: (Map<String, dynamic>? newValue) {
                      setState(() {
                        _pilihTempatHewan = newValue!['tempat'];
                        _hargaHewan = newValue['harga'];
                        _imageHewan = newValue['image'];
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: quantityController,
                    decoration: InputDecoration(
                      labelText: 'Jumlah',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter quantity';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: bookingController,
                    decoration: InputDecoration(
                      labelText: 'Tanggal Beli',
                      border: OutlineInputBorder(),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        String tgl =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        setState(() {
                          bookingController.text = tgl;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _submit();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String quantity = quantityController.text;
      String tempatHewan = _pilihTempatHewan;
      String hargaHewan = _hargaHewan;
      String imageHewan = _imageHewan;
      String booking = bookingController.text;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LatihanOutput(
            nama: nama,
            quantity: quantity,
            booking: booking,
            tempatHewan: tempatHewan,
            hargaHewan: hargaHewan,
            imageHewan: imageHewan,
          ),
        ),
      );
    }
  }
}
