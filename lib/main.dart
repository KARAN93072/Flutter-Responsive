import 'package:flutter/material.dart';
import 'package:flutter_responsive/home.dart';
import 'package:flutter_responsive/mobile_tab_orientation/mobile_tab_orientation.dart';
import 'package:flutter_responsive/mobile_tab_orientation_gridview/mobile_tab_orientation_gridview.dart';

void main() {
  runApp(const MyApp());
}

late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return MaterialApp(
      home: MobileTabOrientationGridview(),
    );
  }
}
