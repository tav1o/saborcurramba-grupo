import 'package:flutter/material.dart';
import '../datos/dato.dart';
import 'package:google_fonts/google_fonts.dart';

class carta extends StatefulWidget {
  const carta({super.key});

  @override
  State<carta> createState() => _cartaState();
}

class _cartaState extends State<carta> {
  final Set<int> favoritos = {}; // Guardamos los índices favoritos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF6EC),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/menu/sabor-curra.png',
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Menú currambero",
          style: GoogleFonts.lobster(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange[700]!, Colors.orange[300]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: menuCompleto.isEmpty
            ? Center(
                child: Text(
                  'No hay productos disponibles en el menú.',
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.grey[700]),
                ),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemCount: menuCompleto.length,
                itemBuilder: (context, index) {
                  final producto = menuCompleto[index];
                  return GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Seleccionaste: ${producto.nombre}'),
                          duration: const Duration(seconds: 2),
                          backgroundColor: Colors.orange[700],
                        ),
                      );
                    },
                    child: TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween<double>(begin: 0.9, end: 1),
                      curve: Curves.easeOutBack,
                      builder: (context, scale, child) {
                        return Transform.scale(
                          scale: scale,
                          child: child,
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shadowColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(
                              color: Colors.orange.shade100, width: 1.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(16)),
                                  child: Image.asset(
                                    producto.imagen,
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: IconButton(
                                    icon: Icon(
                                      favoritos.contains(index)
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: favoritos.contains(index)
                                          ? Colors.red
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (favoritos.contains(index)) {
                                          favoritos.remove(index);
                                        } else {
                                          favoritos.add(index);
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      producto.nombre,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      producto.categoria,
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '\$${producto.precio.toStringAsFixed(2)}',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange[700],
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
