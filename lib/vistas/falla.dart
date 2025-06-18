import 'package:flutter/material.dart';

class falla extends StatelessWidget {
  const falla({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://cdn4.iconfinder.com/data/icons/programming-solid-style/24/android-alert-512.png',
            ),
    ),
  )
  ));
  }
}
