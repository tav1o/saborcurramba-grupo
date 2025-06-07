import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.network(
              'https://img.pikbest.com/photo/20240708/burger-image-with-black-background-_10658058.jpg!w700wp',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Sabor Curramba",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      color: const Color.fromARGB(255, 250, 201, 22),
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          offset: Offset(2,2),
                          blurRadius: 4.0,
                          color:Colors.black54
                        )
                      ],
                      fontFamily: 'Lobster',
                    ),
                  ),
                const SizedBox(height: 380),
                ElevatedButton(
                onPressed:(){
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color.fromARGB(255, 250, 201, 22),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
                )),
                child:const Text("Ir a menú",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),

                )

              )],

              ),
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}