import 'package:belajar_flutter/homescreen.dart';
import 'package:belajar_flutter/latihanchalkzone.dart';
import 'package:belajar_flutter/persib.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/latihanrow.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman Home"),
            TextButton(
              child: Text("About"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LatihanChalkzone(),
                  ),
                );
              },
              child: Container(
                color: Colors.blueAccent,
                width: 80,
                height: 20,
                child: Text("Latihan List"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
