import 'package:flutter/material.dart';

class LatihanOutput extends StatelessWidget {
  final String nama, quantity, booking, tempatHewan, hargaHewan, imageHewan;
  int harga;

  LatihanOutput({
    Key? key,
    required this.nama,
    required this.quantity,
    required this.booking,
    required this.tempatHewan,
    required this.hargaHewan,
    required this.imageHewan,
  })  : harga = int.parse(hargaHewan),
        super(key: key);

  int hitungTotalHarga() {
    int quantityValue = int.parse(quantity);
    return quantityValue * harga;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Tiket', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,), ),
        centerTitle: true,
      ),
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
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
                child: Image.asset(
                  imageHewan,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama: $nama',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('Tempat: $tempatHewan', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('Jumlah: $quantity', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('Harga: Rp. $hargaHewan', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('Tanggal Booking: $booking', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 16),
                    Text(
                      'Total Harga: ${hitungTotalHarga()}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}