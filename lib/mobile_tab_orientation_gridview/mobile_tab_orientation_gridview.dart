import 'package:flutter/material.dart';

class MobileTabOrientationGridview extends StatefulWidget {
  const MobileTabOrientationGridview({super.key});

  @override
  State<MobileTabOrientationGridview> createState() =>
      _MobileTabOrientationGridviewState();
}

class _MobileTabOrientationGridviewState
    extends State<MobileTabOrientationGridview> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        final isMobile = MediaQuery.of(context).size.shortestSide < 600;
        final isPortrait = orientation == Orientation.portrait;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Orientation with gridView'),
          ),
          drawer: isMobile
              ? Drawer(
                  child: Container(),
                )
              : null,
          body: Row(
            children: [
              if (!isPortrait && isMobile)
                Container(
                  height: double.infinity,
                  width: 200,
                  color: Colors.black,
                ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: isPortrait ? 2 : 3,
                  children: List.generate(40, (index) {
                    return Card(
                      child: Center(child: Text('$index')),
                    );
                  }),
                ),
              ),
            ],
          ),
        );
      });
}
