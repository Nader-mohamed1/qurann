import 'package:flutter/material.dart';
import 'package:quran/Homescreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScren.routName,
      routes: {HomeScren.routName: (context) => HomeScren()},
    );
  }
}
