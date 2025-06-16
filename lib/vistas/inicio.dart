import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saborcurramba/bloc/home_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saborcurramba/main.dart'; 


void main(){
  runApp(MyApp());
}

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
                  Text(
                    "Sabor Curramba",
                    style: GoogleFonts.lobster( 
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: const Color.fromARGB(255, 250, 201, 22),
                      letterSpacing: 2,
                      shadows: const [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 4.0,
                          color: Colors.black54,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 390),

                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(HomeSearchPressed());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 250, 201, 22),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Ver menú",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
