import 'package:flutter/material.dart';
import 'package:belajar_flutter/outputform.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tgllahir, agama;
  OutputFormScreen(
      {Key? key,
      required this.nama,
      required this.jk,
      required this.tgllahir,
      required this.agama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("nama : $nama"),
          Text("Jenis Kelamin : $jk"),
          Text("tanggal Lahir: $tgllahir"),
          Text("Agama : $agama"),
        ],
      ),
    );
  }
}
