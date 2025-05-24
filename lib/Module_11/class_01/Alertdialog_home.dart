import 'package:flutter/material.dart';

class AlertdialogAppHome extends StatefulWidget {
  const AlertdialogAppHome({super.key});

  @override
  State<AlertdialogAppHome> createState() => _AlertdialogAppHomeState();
}

class _AlertdialogAppHomeState extends State<AlertdialogAppHome> {
  void alert() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("This is title"),
            content: Text("Are you Sure?"),
          ),
    );
  }

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                alert();
              },
              child: Text("click"),
            ),
          ),
        ],
      ),
    );
  }
}
