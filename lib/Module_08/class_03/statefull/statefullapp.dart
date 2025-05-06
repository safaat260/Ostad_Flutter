import 'package:flutter/material.dart';
import 'package:test1/Module_08/class_03/statefull/statefullhome.dart';

class statefullapp extends StatefulWidget {
  const statefullapp({super.key});

  @override
  State<statefullapp> createState() => _satefullappState();
}

class _satefullappState extends State<statefullapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "counter update with statefullwidget",
      home: counterwithstatefullwidget(),


    );
  }
}


