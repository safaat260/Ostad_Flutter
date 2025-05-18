import 'package:flutter/material.dart';

//module_07_class_01
//import 'package:test1/Module_07/class_01_column_row_icons_buttons/Myapp.dart';

//module_07_class_02
//import 'package:test1/Module_07/class_02/Myappcls2.dart';

//login
//import 'package:test1/Module_08/class_01/loginwithformApp.dart';

//module_08_class_01
//import 'Module_08/class_01/m8c1App.dart';

//listview
//import 'Module_08/Class_02/listviewapp.dart';

//gridview
//import 'package:test1/Module_08/Class_02/Gridviewapp.dart';

// statefull
// import 'package:test1/Module_08/class_03/statefull/statefullapp.dart';

//todoapp
//import 'package:test1/Module_09/todoapp/todoapp.dart';

//media query
//import 'package:test1/Module_09/class%201/mediaqueryapp.dart';

//aspect ratio
//import 'package:test1/Module_09/class%202/aspect_ratio-app.dart';

//device preview + drawer
import 'package:test1/Module_09/class%203/device_preview_app.dart';
//pub dev
import 'package:device_preview/device_preview.dart';

void main() {
  //runApp(MyApp());//module1cls1
  //runApp(Myappcls2());
  //runApp(m8c1App());
  //runApp(loginwithformApp());
  //runApp(listviewhome());
  //runApp(Gridviewapp());
  //runApp(statefullapp());
  //runApp(todoapp());
  //runApp(mediaqueryapp());
  //runApp(aspect_app());

  //device preview
  runApp(
    DevicePreview(
      enabled: false,
      //builder: (context)=>device_preview_app(),

      //or
      builder: (context) {
        return device_preview_app();
      },

    ),
  );
}
