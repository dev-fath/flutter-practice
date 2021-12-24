import 'package:flutter/material.dart';
import 'package:hit_flutter/main_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Startup Name Generator',
      home: MainTab(),
      // routes: ,
      // onGenerateRoute: ,
      // builder: ,
    );
  }
}

