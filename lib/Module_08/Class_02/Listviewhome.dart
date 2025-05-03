import 'package:flutter/material.dart';

class Listviewhome extends StatelessWidget {
  const Listviewhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("List_View",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
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

      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index){
          return Card(
            //card color
            color: Colors.cyan,

            child: ListTile(
              title: Text("person", style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text("0173232313 $index"),
              leading: Icon(Icons.phone, color: Colors.white,),
              trailing: Icon(Icons.delete, color: Colors.pink,),
              
            ),
          );
        },
      ),

    );
  }
}
