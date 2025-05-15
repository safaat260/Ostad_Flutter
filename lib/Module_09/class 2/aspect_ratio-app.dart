import 'package:flutter/material.dart';
import 'package:test1/Module_09/class%202/aspect_ratio-home.dart';

class aspect_app extends StatefulWidget {
  const aspect_app({super.key});

  @override
  State<aspect_app> createState() => _aspect_appState();
}

class _aspect_appState extends State<aspect_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aspect_app",
      home: aspect_home(),
    );
  }
}
