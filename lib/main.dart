import 'package:flutter/material.dart';
import 'package:get_started/pages/heroes.dart';
import 'package:get_started/pages/donor_page.dart';
import 'package:get_started/pages/get_started.dart';
import 'package:get_started/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Heroes(),
    );
  }
}
