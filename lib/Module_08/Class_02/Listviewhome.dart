import 'package:flutter/material.dart';
import 'package:test1/Module_08/Class_02/Gridviewhome.dart';
import 'package:test1/Module_08/class_01/loginwithformHome.dart';

class Listviewhome extends StatelessWidget {
  //data pass
  final dynamic phoneNumber;
  final dynamic password;

  const Listviewhome({super.key, required this.phoneNumber, this.password,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "List_View",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),

      // body: ListView(//lisview work without any singlechild scroll view
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.cyan,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.black,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.purpleAccent,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.cyan,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.black,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.purpleAccent,
      //     ),
      //
      //
      //
      //   ],
      //
      // ),
      body: Column(
        children: [

          // SizedBox(height: 20,),
          // //name passed
          // Text(name, style: TextStyle(
          //   fontSize: 40,
          //   color: Colors.pink,
          //   fontWeight: FontWeight.bold,
          // ),),

          //SizedBox(width: 20,),
          //phonenumber passed
          Text("Your PhoneNumber is:\n$phoneNumber", style: TextStyle(
            fontSize: 20,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),),


          //SizedBox(width: 10,),
          //password passed
          Text("Your password is:\n$password", style: TextStyle(
            fontSize: 20,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context); //works same

                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginwithformHome(),
                      ),
                    );

                  },
                  child: Text("Go Back Login page"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Gridviewhome()),
                    );
                  },
                  child: Text("Go-Gridview"),
                ),
              ),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Card(
                  //card color
                  color: Colors.cyan,

                  child: ListTile(
                    title: Text(
                      "person",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("0173232313 $index"),
                    leading: Icon(Icons.phone, color: Colors.white),
                    trailing: Icon(Icons.delete, color: Colors.pink),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
