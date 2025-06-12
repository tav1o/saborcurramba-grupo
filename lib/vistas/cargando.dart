import 'package:flutter/material.dart';

class cargando extends StatelessWidget {
  const cargando({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Cargando...', style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
