import 'package:flutter/material.dart';
import 'package:zps_app/constants/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          // Open Drower
          myDrawer,
          // rest Of Body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // 4 box on the Top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),

                // tiles below it
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.blue)),
            ],
          ))
        ],
      ),
    );
  }
}
