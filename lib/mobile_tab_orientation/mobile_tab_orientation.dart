import 'package:flutter/material.dart';

class MobileTabOrientation extends StatelessWidget {
  const MobileTabOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? Container(
                color: Colors.redAccent, child: Center(child: Text('Portrait')))
            : Container(
                color: Colors.amberAccent,
                child: Center(child: Text('Landscape')),
              ));
  }
}
