import 'package:belajar_flutter/formscreen.dart';
import 'package:belajar_flutter/grid_builder.dart';
import 'package:belajar_flutter/latihanrow.dart';
import 'package:belajar_flutter/outputbookingscreen.dart';
import 'package:belajar_flutter/outputform.dart';
import 'package:belajar_flutter/persib.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'latihanchalkzone.dart';
import 'grid_builder.dart';
import 'homescreen.dart';
import 'aboutscreen.dart';
import 'package:belajar_flutter/flora/listflorascreen.dart';
import 'package:belajar_flutter/flora/detailflora.dart';
import 'package:belajar_flutter/formscreen.dart';
import 'package:belajar_flutter/outputform.dart';
import 'package:belajar_flutter/bookingscreen.dart';
import 'package:belajar_flutter/outputbookingscreen.dart';
import 'package:belajar_flutter/loginRegister/formlogin.dart';
import 'package:belajar_flutter/loginRegister/formregister.dart';
// import 'container_widget.dart';
// import 'column_widget.dart';
// import 'rowcolumn.dart';
// import 'latihanrow.dart';
// import 'iconwidget.dart';
// import 'listviewbasic.dart';
// import 'listviewbuilder.dart';
// import 'listviewseparated.dart';
// import 'persib.dart';
// import 'navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: CheckAuth(),
    );
  }
}

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = BottomNavigationMenu();
    } else {
      child = LoginForm();
    }

    return Scaffold(
      body: child,
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

  List _pages = [
    HomeScreen(),
    ListFloraScreen(),
    LatihanForm(),
    LoginForm(),
    RegisterForm(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "DetailFlora"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: "BookingScreen"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "FormLogin"),
        ],
      ),
    );
  }
}
