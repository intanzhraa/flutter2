import 'package:flutter/material.dart';

class Persib extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [
                Image.asset("assets/img/persib2.jpg"),
                Image.asset("assets/img/persib.jpg"),
                Image.asset("assets/img/persib3.jpeg")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/img/persib.jpg"),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Image.asset("assets/img/persib2.jpg"),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Image.asset("assets/img/persib3.jpeg"),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Image.asset("assets/img/persib2.jpg"),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Image.asset("assets/img/persib3.jpeg"),
                Container(
                  margin: EdgeInsets.all(10),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: 200,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}