

import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({super.key, 
  required this.mobileScaffold, 
  required this.tabScaffold, 
  required this.desktopScaffold
  });


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context , constraints ) { 
      if(constraints.maxWidth < 500){
        return mobileScaffold;
      } else if(constraints.maxWidth < 1100){
        return tabScaffold;
      }else {
        return desktopScaffold;
      }
     },);
  }
}