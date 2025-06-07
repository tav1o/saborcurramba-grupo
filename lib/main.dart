import 'package:flutter/material.dart';
import 'vistas/cargando.dart';
import 'vistas/carta.dart';
import 'vistas/falla.dart';
import 'vistas/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inicio(),
    );
  }
}





