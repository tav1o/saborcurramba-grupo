import 'package:flutter/material.dart';
import 'package:saborcurramba/vistas_cubit/home_screms.dart';
 // Ajusta el nombre si es un typo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabor Curramba',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), 
    );
  }
}
