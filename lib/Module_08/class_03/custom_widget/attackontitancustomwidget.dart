import 'package:flutter/material.dart';

class Attackontitan extends StatelessWidget {
  final String titangif, titanname;
  const Attackontitan({
    super.key, required this.titangif, required this.titanname,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      //card styles
      color: Colors.black,
      elevation: 10,
      //shadowColor: Colors.redAccent,
      shape: RoundedRectangleBorder(

        //container all side box shape modify
        borderRadius: BorderRadius.only(
          //bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(30),
          topLeft: Radius.circular(30),
          //topRight: Radius.circular(40),

        ),

        //border colors
        side: BorderSide(
          color: Colors.redAccent,
          width: 3,
        ),
      ),


      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(10, 10),
              blurRadius: 15,
            ),

          ],

        ),

        width: 350,
        child: Column(
          children: [
            Image.network(
              titangif,
            ),

            Text(titanname, style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            )),
          ],
        ),
      ),
    );
  }
}