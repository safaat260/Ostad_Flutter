import 'package:flutter/material.dart';

class AlertdialogAppHome extends StatefulWidget {
  const AlertdialogAppHome({super.key});

  @override
  State<AlertdialogAppHome> createState() => _AlertdialogAppHomeState();
}

class _AlertdialogAppHomeState extends State<AlertdialogAppHome> {
  //alertdialog
  int age = 0;
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
                  setState(() {
                    age=age+2;
                  });
                  print(age);
                  Navigator.pop(context);
                },
                child: Text("No", style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    age=age+5;
                  });
                  print(age);
                  Navigator.pop(context);
                },
                child: Text("Yes", style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
    );
  }

  //alertdialog-with-icon v1
  void alertwithiconV1() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(

            //shape of alert
               shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Row(
              children: [
                Icon(Icons.warning, color: Colors.red),
                SizedBox(width: 10,),
                Text("Warning!", style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            content: Text("Something Went Wrong!"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Dismiss", style: TextStyle(color: Colors.green),),
              ),
            ],
          ),
    );
  }

  //alertdialog-with-icon v2
  void alertwithiconV2() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(

        //shape of alert
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text("Main Text", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red, size: 30,),
                SizedBox(width: 5),
                Text("Sub Text", style: TextStyle(fontSize: 20),),
              ],
            ),
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec", style: TextStyle(color: Colors.grey),),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("OK!", style: TextStyle(color: Colors.green),),
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

  //bottomsheetalertdialog
  void bottomsheetalertdialog() {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Text(
                "Chose Option",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text("Option-1"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text("Option-2"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text("Option-3"),
                onTap: () => Navigator.pop(context),
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

          SizedBox(height: 20),

          //alertdialog-with-icon v1
          Center(
            child: ElevatedButton(
              onPressed: () {
                alertwithiconV1();
              },
              child: Text("Alert-Dialog-with-Icon V1"),
            ),
          ),

          SizedBox(height: 20),

          //alertdialog-with-icon v2
          Center(
            child: ElevatedButton(
              onPressed: () {
                alertwithiconV2();
              },
              child: Text("Alert-Dialog-with-Icon v2"),
            ),
          ),

          SizedBox(height: 20),

          //simpledialog
          Center(
            child: ElevatedButton(
              onPressed: () {
                simpledialog();
              },
              child: Text("Simple-Dialog"),
            ),
          ),

          SizedBox(height: 20),

          //bottomsheetalertdialog
          Center(
            child: ElevatedButton(
              onPressed: () {
                bottomsheetalertdialog();
              },
              child: Text("Bottom-Sheet-Alertdialog"),
            ),
          ),
        ],
      ),
    );
  }
}
