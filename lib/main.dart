import 'package:flutter/material.dart';
import 'package:qurann/HomeSreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Homesreen.routName,
      routes: {Homesreen.routName: (context) => Homesreen()},
    );
  }
}
