import 'package:flutter/material.dart';

class loading extends StatelessWidget {
  const loading({super.key}); // constructor de widget

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
            Text(
              'Cargando...',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ) ,
    );
  }
}