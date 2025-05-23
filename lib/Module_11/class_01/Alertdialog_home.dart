import 'package:flutter/material.dart';

class AlertdialogAppHome extends StatefulWidget {
  const AlertdialogAppHome({super.key});

  @override
  State<AlertdialogAppHome> createState() => _AlertdialogAppHomeState();
}

class _AlertdialogAppHomeState extends State<AlertdialogAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Alertdialog",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.teal,
      ),


      body: Column(
        children: [

        ],
      ),

    );
  }
}
