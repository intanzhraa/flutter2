import 'package:flutter/material.dart';

class LatihanRow extends StatelessWidget {
  
  @override
  Widget build(BuildContext) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueGrey, Colors.black26]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 150,
            width: 900,
            color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Home"),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [FlutterLogo(size: 100,), FlutterLogo(size: 100,)],
          ),
          Container(
            // height: 100,
            // width: 250,
            // color: Colors.grey,
          ),
          Container(
            height: 100,
            width: 250,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
            "https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_960_720.png",
            fit: BoxFit.cover,
          ),
                // FlutterLogo(
                //   size: 100,
                // ),
                Container(
                  color: Colors.white,
                  child: Text("gambar 1"),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 250,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
            "https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_960_720.png",
            fit: BoxFit.cover,
          ),
                // FlutterLogo(
                //   size: 100,
                // ),
                Container(
                  color: Colors.white,
                  child: Text("gambar 2"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}