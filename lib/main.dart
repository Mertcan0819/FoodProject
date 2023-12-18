import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/%C4%B1temPage.dart';

import 'Pages/HomePage.dart';
import 'Pages/cartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),

      routes: {
        '/': (context) => const HomePage(),
        'cartPage' :(context) => const cartPage(), 
        'ItemPage' :(context) => const ItemPage(), 
      },
    );
  }
}




 