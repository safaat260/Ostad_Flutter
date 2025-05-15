import 'package:flutter/material.dart';
import 'package:test1/Module_09/class%202/aspect_ratio-home.dart';

//package import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class aspect_app extends StatefulWidget {
  const aspect_app({super.key});

  @override
  State<aspect_app> createState() => _aspect_appState();
}

class _aspect_appState extends State<aspect_app> {
  @override
  Widget build(BuildContext context) {

    //package usage
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const aspect_home(),
    );
  }
}