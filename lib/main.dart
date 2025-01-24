import 'package:book_store/Config/themes.dart';
import 'package:book_store/Pages/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: 'Book Store',
      home: const WelcomePage(),
    );
  }
}
