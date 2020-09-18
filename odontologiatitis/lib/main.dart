import 'package:flutter/material.dart';
import 'package:odontologiatitis/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Odontología IPR',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}