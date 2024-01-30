import 'package:belajar_flutter/latihanrow.dart';
import 'package:belajar_flutter/persib.dart';
import 'package:flutter/material.dart';
// import 'container_widget.dart';
// import 'column_widget.dart';
// import 'rowcolumn.dart';
// import 'latihanrow.dart';
// import 'iconwidget.dart';
// import 'listviewbasic.dart';
// import 'listviewbuilder.dart';
// import 'listviewseparated.dart';
// import 'persib.dart';
import 'latihanchalkzone.dart';
// import 'navigator.dart';
import 'homescreen.dart';
import 'aboutscreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // this
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Belajar Flutter",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("nextgenhalaman"),
//           backgroundColor: Colors.blueAccent,
//           centerTitle: true,
//         ),
//         body: Container(
//           color: Colors.white,
//           child: firstRoute(),
//         ),
//       ),
//     );
//   }
// }

// class BelajarHelloWord extends StatelessWidget {
//   const BelajarHelloWord({
//     Key? key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextWidget();
//   }
// }

// class TextWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "XII RPL 2",
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         color: Colors.deepPurple[400],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     title: 'Named Routes',
//     initialRoute: '/',
//     routes: {
//       '/': (context) => const Homescreen(),
//       '/second': (context) => const secondRoute(),
//     },
//   ));
// }

// // ignore: camel_case_types
// class Homescreen extends StatelessWidget {
//   const Homescreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Nextgen Halaman 1'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Pergi ke halaman 2'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }

// // ignore: camel_case_types
// class secondRoute extends StatelessWidget {
//   const secondRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Nextgen Halaman 2"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Kembali!'),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project Flutter",
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigationMenu(),
        '/about': (context) => AboutScreen(),
        '/latihan': (context) => LatihanChalkzone()
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Dunia...\nHallo Prajuritt.. ",
        style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [HomeScreen(), LatihanChalkzone(), Persib(), LatihanRow()];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Grid"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Container"),
        ],
      ),
    );
  }
}
