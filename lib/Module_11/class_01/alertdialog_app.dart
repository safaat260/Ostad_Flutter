import 'package:flutter/material.dart';
import 'package:test1/Module_11/class_01/Alertdialog_home.dart';

class AlertdialogApp extends StatefulWidget {
  const AlertdialogApp({super.key});

  @override
  State<AlertdialogApp> createState() => _AlertdialogAppState();
}

class _AlertdialogAppState extends State<AlertdialogApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AlertDialog",
      home: AlertdialogAppHome(),
    );
  }
}
