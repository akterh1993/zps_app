import 'package:flutter/material.dart';
import 'package:zps_app/responsive/desktop_scaffold.dart';
import 'package:zps_app/responsive/mobile_scaffold.dart';
// import 'package:zps_app/pages/home_page.dart';
import 'package:zps_app/responsive/responsive_layout.dart';
import 'package:zps_app/responsive/tabe_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabScaffold: TabeScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
