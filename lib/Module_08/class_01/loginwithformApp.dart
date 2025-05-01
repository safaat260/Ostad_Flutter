import 'package:flutter/material.dart';
import 'package:test1/Module_08/class_01/loginwithformHome.dart';

class loginwithformApp extends StatelessWidget {
  const loginwithformApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login_form",
      home: loginwithformHome(),
    );
  }
}
