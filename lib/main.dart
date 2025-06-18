import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: TabBarTheme(indicatorColor: Colors.white,labelColor: Colors.white,),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
