import 'package:flutter/material.dart';
import 'package:flutter_responsive/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.height < 600;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Row(
      children: [
        if (isDesktop(context))
          Container(
            color: Colors.amberAccent,
            width: 200,
            height: screenHeight,
            child: Center(child: Text('$screenHeight')),
          ),
        Expanded(
          child: Container(
            color: Colors.redAccent,
            child: Center(
              child: Text('$screenWidth'),
            ),
          ),
        )
      ],
    ));
  }
}
