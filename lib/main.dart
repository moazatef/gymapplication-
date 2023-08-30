import 'package:flutter/material.dart';
import 'layout/first_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'layout/second_screen.dart';

void main(){

  runApp(const MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SecondScreen(),
    );
  }
}