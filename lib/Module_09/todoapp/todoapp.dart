import 'package:flutter/material.dart';
import 'package:test1/Module_09/todoapp/todohome.dart';

class todoapp extends StatefulWidget {
  const todoapp({super.key});

  @override
  State<todoapp> createState() => _todoappState();
}

class _todoappState extends State<todoapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TodoApp",
      home: todohome(),
    );
  }
}
