import 'package:flutter/material.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //base of app
      debugShowCheckedModeBanner: false,
      title: "Bkash App",
      home: Home(), //Home is called in MyApp
    );
  }
}
