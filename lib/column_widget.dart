import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.amber,
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Container(
              color: Colors.blue,
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Container(
              color: Colors.green,
              child: FlutterLogo(
                size: 60,
              ),
            )
          ],
        ),
      ],
    );
  }
}