import 'package:flutter/material.dart';
import 'package:get_started/modules/bottom_navbar.dart';
import 'package:get_started/pages/donor_list.dart';
import 'package:get_started/pages/heroes.dart';
import 'package:get_started/pages/donor_page.dart';
import 'package:get_started/pages/get_started.dart';
import 'package:get_started/pages/login_page.dart';
import 'package:get_started/pages/new_donation.dart';
import 'package:get_started/pages/profile.dart';
import 'pages/profile.dart';

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
      home: const GetStarted(),
    );
  }
}
