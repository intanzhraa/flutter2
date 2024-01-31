import 'package:belajar_flutter/helpers/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:belajar_flutter/bookingscreen.dart';

class PembelianForm extends StatefulWidget {
  const PembelianForm(
      {Key? key,
      required String nama,
      required String jumlah,
      required TextEditingController tglBeli,
      required String jenis,
      required double selectedBungaPrice,
      required double totalHarga})
      : super(key: key);

  @override
  State<PembelianForm> createState() => _PembelianFormState();
}

class _PembelianFormState extends State<PembelianForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglBeliController = TextEditingController();
  String _PilihJenis = " ";
  final List<String> jenis = [
    "Taman Mini Indonesia",
    "Taman Bunga Nusantara",
    "Taman Wisata Maribaya",
    "Taman Hutan Raya",
    "Dusun Bambu Family"
  ];

  final Map<String, double> bungaPrices = {
    "Taman Mini Indonesia": 650000,
    "Taman Bunga Nusantara": 70000,
    "Taman Wisata Maribaya": 200000,
    "Taman Hutan Raya": 860000,
    "Dusun Bambu Family": 20000,
  };

  double selectedBungaPrice = 10000.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Formulir Biodata"),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                              hintText: "Tiket",
                              labelText: "Pilih Tiket",
                              border: OutlineInputBorder()),
                          items: jenis.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _PilihJenis = newValue!;
                              selectedBungaPrice =
                                  bungaPrices[_PilihJenis] ?? 10000.0;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: jumlahController,
                          decoration: InputDecoration(
                            hintText: "Jumlah Tiket",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: tglBeliController,
                          decoration: InputDecoration(
                            hintText: "Tanggal Booking",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tgl =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglBeliController.text = tgl;
                              });
                            } else {
                              print("Tanggal Tidak Dipilih");
                            }
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: displayHeight(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.white60)),
                              ),
                            ),
                            child: Text("Simpan"),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
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
      String jumlah = jumlahController.text;
      String tglBeli = tglBeliController.text;
      String Jenis = _PilihJenis;

      double totalHarga = double.parse(jumlah) * selectedBungaPrice;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PembelianForm(
            nama: nama,
            jumlah: jumlah,
            tglBeli: tglBeliController,
            jenis: _PilihJenis,
            selectedBungaPrice: selectedBungaPrice,
            totalHarga: totalHarga,
          ),
        ),
      );
    }
  }
}
