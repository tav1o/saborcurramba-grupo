import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';




class BlocTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    context.read<HomeBloc>().add(LoadHamburguesasEvent());

    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadInprogress) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HomeLoadSuccess) {
            return ListView.builder(
              itemCount: state.productos.length,
              itemBuilder: (context, index) {
                final producto = state.productos[index];
                return ListTile(
                  title: Text(producto.nombre),
                  subtitle: Text(producto.ingredientes),
                );
              },
            );
          } else if (state is HomeLoadFailure) {
            return Center(child: Text('Error al cargar hamburguesas'));
          }
          return Center(child: Text('Esperando carga...'));
        },
      ),
    );
  }
}

