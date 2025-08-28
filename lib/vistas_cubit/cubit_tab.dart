import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saborcurramba/cubit/home_state.dart';
import 'package:saborcurramba/modelo/producto.dart';
import '../cubit/home_cubit.dart';


class CubitTab extends StatelessWidget {
  const CubitTab({super.key});

  

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().loadPizzas();
    return BlocBuilder<HomeCubit, List<Producto>>(
      builder: (context, productos) {
        if (productos.isEmpty) {
          return Center(child: Text('Esperando datos o carga vacía...'));
        } else {
          return ListView.builder(
            itemCount: productos.length,
            itemBuilder: (context, index) {
              final producto = productos[index];
              return ListTile(
                title: Text(producto.nombre),
                subtitle: Text(producto.ingredientes),
              );
            },
          );
        }
      },
    );
  }
}
