import 'package:flutter/material.dart';
import 'package:app_design/pages/main_screen.dart';
import 'package:app_design/pages/signin.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context)=>mainscreen(),
      '/signin': (context)=>signin(),
    },
  ));
}
