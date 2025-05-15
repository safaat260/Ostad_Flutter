import 'package:flutter/material.dart';
import 'package:test1/Module_09/class%203/device_preview_home.dart';

class device_preview_app extends StatefulWidget {
  const device_preview_app({super.key});

  @override
  State<device_preview_app> createState() => _device_preview_appState();
}

class _device_preview_appState extends State<device_preview_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Device Preview",
      home: device_preview_home(),
    );
  }
}
