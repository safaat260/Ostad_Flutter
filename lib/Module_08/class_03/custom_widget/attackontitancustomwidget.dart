//card modification
//   Card(
//     //card styles
//       color: Colors.black,
//       elevation: 10,
//       //shadowColor: Colors.redAccent,
//       shape: RoundedRectangleBorder(
//
//         //container all side box shape modify
//         borderRadius: BorderRadius.only(
//           //bottomLeft: Radius.circular(20),
//           bottomRight: Radius.circular(30),
//           topLeft: Radius.circular(30),
//           //topRight: Radius.circular(40),
//
//         ),
//
//         //border colors
//         side: BorderSide(
//           color: Colors.redAccent,
//           width: 3,
//         ),
//       ),
//   ),

import 'package:flutter/material.dart';

class Attackontitan extends StatelessWidget {
  final String titangif, titanname, titanrate;
  const Attackontitan({
    super.key, required this.titangif, required this.titanname, required this.titanrate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
      padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(4, 4),
            blurRadius: 5,
          ),

        ],

      ),

      width: 350,
      child: Column(
            children: [
            Stack(
              children: [
                Image.network(titangif,),
                //positioned
                Positioned(
                  bottom: 10,
                    left: 5,

                    child: Container(
                      width: 60,
                  color: Colors.black,
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 20, color: Colors.yellow,),

                          Text(titanrate, style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),

                ))
              ],
            ),


          Text(titanname, style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          )),
        ],
      )
      );
  }
}