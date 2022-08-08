import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_and_rest_api/view/home_page.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    
  }
}