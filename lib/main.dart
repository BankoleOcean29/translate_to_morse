import 'package:flutter/material.dart';
import 'package:translate_to_morse/screen/home_page.dart';

void main() {
  runApp(const Morse());
}

class Morse extends StatelessWidget {
  const Morse({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

