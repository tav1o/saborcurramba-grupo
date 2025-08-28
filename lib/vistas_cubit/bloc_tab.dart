import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';

class BlocTab extends StatelessWidget {
  const BlocTab({super.key});

  @override
  Widget build(BuildContext context) {
    
    context.read<HomeBloc>().add(LoadHamburguesasEvent());

    return Scaffold(
      backgroundColor: Color(0xFF121212), 
      appBar: AppBar(
        title: Text(
          'Hamburguesas Futuristas',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF1A1A1A),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              context.read<HomeBloc>().add(LoadHamburguesasEvent());
            },
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadInprogress) {
            return Center(child: CircularProgressIndicator(color: Colors.blueAccent));
          } else if (state is HomeLoadSuccess) {
            return ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: state.productos.length,
              itemBuilder: (context, index) {
                final producto = state.productos[index];
                return Card(
                  color: Color(0xFF333333), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), 
                  ),
                  elevation: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16.0),
                    leading: Icon(
                      Icons.local_dining,
                      color: Colors.purpleAccent, 
                      size: 32,
                    ),
                    title: Text(
                      producto.nombre,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      producto.ingredientes,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.greenAccent,
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('¡Elegiste ${producto.nombre}!')),
                      );
                    },
                  ),
                );
              },
            );
          } else if (state is HomeLoadFailure) {
            return Center(
              child: Text(
                'Error al cargar hamburguesas',
                style: TextStyle(color: Colors.redAccent, fontSize: 18),
              ),
            );
          }
          return Center(
            child: Text(
              'Esperando carga...',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
