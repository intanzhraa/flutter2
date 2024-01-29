import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationY(0.1),
      decoration: BoxDecoration(
        // color: Colors.BlueGray
        gradient: RadialGradient(
          colors: [Colors.black87, Colors.deepPurpleAccent, Colors.yellow],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationY(0.1),
      decoration: BoxDecoration(
        // color: Colors.BlueGray
        gradient: RadialGradient(
          colors: [Colors.black87, Colors.deepPurpleAccent, Colors.orange],
        ),
        borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationY(0.1),
      decoration: BoxDecoration(
        // color: Colors.BlueGray
        gradient: RadialGradient(
          colors: [Colors.black87, Colors.deepPurpleAccent, Colors.yellow],
        ),
        borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationY(0.1),
      decoration: BoxDecoration(
        // color: Colors.BlueGray
        gradient: RadialGradient(
          colors: [Colors.black87, Colors.deepPurpleAccent, Colors.black],
        ),
        borderRadius: BorderRadius.circular(10),
        ),
        child: BelajarHelloWord(),
        )
      ),
      ),
    );
  }
}
