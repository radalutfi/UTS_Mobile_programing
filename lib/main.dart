import 'package:flutter/material.dart';
import 'package:mobile_programing/profile/root_app.dart';
import 'package:mobile_programing/profile/notifications.dart';
import 'package:mobile_programing/login.dart';
import 'package:mobile_programing/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RootApp(),
    );
  }
}
