import 'package:belajar_flutter/aboutscreen.dart';
import 'package:belajar_flutter/latihanchalkzone.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/latihanrow.dart';
import 'package:belajar_flutter/persib.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman About"),
            TextButton(
              child: Text("Halaman Latihan"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LatihanChalkzone()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
