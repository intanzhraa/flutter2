import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Row & Column",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Belajar Row & Column"),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                width: 400,
                color: Colors.grey,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 300,
                width: 400,
                color: Colors.grey,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}