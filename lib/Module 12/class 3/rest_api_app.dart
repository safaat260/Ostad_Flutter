import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/Module%2012/class%203/rest_api_home.dart';

class restapi_app extends StatefulWidget {
  const restapi_app({super.key});

  @override
  State<restapi_app> createState() => _restapi_appState();
}

class _restapi_appState extends State<restapi_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rest Api",
      home: rest_api_home(),
    );
  }
}
