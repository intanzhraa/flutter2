import 'package:belajar_flutter/latihanrow.dart';
import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'column_widget.dart';
import 'rowcolumn.dart';
import 'latihanrow.dart';
import 'iconwidget.dart';
import 'listviewbasic.dart';
import 'listviewbuilder.dart';
import 'listviewseparated.dart';
import 'persib.dart';
import 'latihanchalkzone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // this
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("chalkzone"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: LatihanChalkzone(),
        ),
      ),
    );
  }
}

class BelajarHelloWord extends StatelessWidget {
  const BelajarHelloWord({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget();
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "XII RPL 2",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple[400],
      ),
    );
  }
}
