import 'package:flutter/material.dart';
import 'package:test1/Module_11/class_02_Calculator/calculator_home.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator APP",
      home: CalculatorHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
