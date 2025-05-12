import 'package:flutter/material.dart';
import 'package:test1/Module_09/class%201/mediaqueryhome.dart';

class mediaqueryapp extends StatefulWidget {
  const mediaqueryapp({super.key});
  @override
  State<mediaqueryapp> createState() => _mediaqueryappState();
}

class _mediaqueryappState extends State<mediaqueryapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "media query",
      home: mediaqueryhome(),

    );
  }
}
