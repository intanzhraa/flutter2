import 'package:flutter/material.dart';
import 'package:belajar_flutter/loginRegister/formlogin.dart';

class OutputFormLogin extends StatelessWidget {
  final String email, password;
  OutputFormLogin(
      {Key? key,
      required this.email,
      required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Email : $email"),
          Text("Password : $password"),
        ],
      ),
    );
  }
}
