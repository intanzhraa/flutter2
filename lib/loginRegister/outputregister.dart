import 'package:flutter/material.dart';
import 'package:belajar_flutter/loginRegister/formregister.dart';

class OutputFormRegister extends StatelessWidget {
  final String nama, email, role, password;
  OutputFormRegister(
      {Key? key,
      required this.nama,
      required this.email,
      required this.role,
      required this.password,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Nama : $nama"),
          Text("Email : $email"),
          Text("Role : $role"),
          Text("Password : $password"),
        ],
      ),
    );
  }
}
