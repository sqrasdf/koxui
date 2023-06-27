import 'package:flutter/material.dart';
import 'package:koxui/hidden_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(behavior: MyBehavior(), child: child!);
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        splashColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: HiddenDrawer(),
      ),
    );
  }
}
