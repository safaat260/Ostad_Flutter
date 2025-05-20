import 'package:flutter/material.dart';
import 'package:test1/Module_11/lifecylehome.dart';

class lifecyleapp extends StatefulWidget {
  const lifecyleapp({super.key});

  @override
  State<lifecyleapp> createState() => _lifecyleappState();
}

class _lifecyleappState extends State<lifecyleapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Life-Cycle",
      home: lifecyclehome(),
    );
  }
}
