import 'package:flutter/material.dart';

class AlertdialogAppHome extends StatefulWidget {
  const AlertdialogAppHome({super.key});

  @override
  State<AlertdialogAppHome> createState() => _AlertdialogAppHomeState();
}

class _AlertdialogAppHomeState extends State<AlertdialogAppHome> {
  //alertdialog
  void alert() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("This is title"),
            content: Text("Are you Sure?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No", style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Yes", style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
    );
  }

  //simple dialog
  void simpledialog() {
    showDialog(
      context: context,
      builder:
          (context) => SimpleDialog(
            title: Text("Simple Dialog"),
            children: [
              SimpleDialogOption(
                child: Text("Option - 1"),
                onPressed: () => Navigator.pop(context),
              ),
              SimpleDialogOption(
                child: Text("Option - 2"),
                onPressed: () => Navigator.pop(context),
              ),
              SimpleDialogOption(
                child: Text("Option - 3"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
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
          //alertdialog
          Center(
            child: ElevatedButton(
              onPressed: () {
                alert();
              },
              child: Text("Alert-Dialog"),
            ),
          ),
          //simpledialog
          Center(
            child: ElevatedButton(
              onPressed: () {
               simpledialog();
              },
              child: Text("Simple-Dialog"),
            ),
          ),
        ],
      ),
    );
  }
}
