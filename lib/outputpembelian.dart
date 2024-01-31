import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, tiket, tglhir, tempat;
  final int totalHarga, hargaPerTiket;
  OutputFormScreen(
      {Key? key,
      required this.nama,
      required this.tiket,
      required this.tglhir,
      required this.tempat,
      required this.hargaPerTiket,
      required this.totalHarga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Detail Pemesanan", style: TextStyle(color: Colors.white),),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/singa.jpg",
                width: double.infinity,
                height: 200.0,
              ),
              Container(
                child: Text(
                  "nama : $nama",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Container(
                child: Text("tiket : $tiket",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                child: Text("harga per tiket : $hargaPerTiket",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                child: Text("tanggal berangkat : $tglhir",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                child: Text("tempat : $tempat",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                  child: Text("total: $totalHarga",
                      style: TextStyle(color: Colors.black, fontSize: 15))),
            ],
          ),
        ),
      ),
    );
  }
}