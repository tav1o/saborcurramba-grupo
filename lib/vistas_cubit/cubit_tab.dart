import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saborcurramba/cubit/home_state.dart';
import '../cubit/home_cubit.dart';

class CubitTab extends StatelessWidget {
  const CubitTab({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().loadPizzas();

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: BlocBuilder<HomeCubit, HomeStateCubit>(
        builder: (context, state) {
          if (state is HomeInitial ) {
            return Center(child: Text('Esperando datos o carga vacía...'));
          } else  if(state is HomeLoadInProgress){
            return Center(child: CircularProgressIndicator(),);
          } else if(state is HomeLoadSuccess){
            return ListView.builder(
              itemCount: state.productos.length,
              itemBuilder: (context, index) {
                final producto = state.productos[index];
                return Card(
                  elevation: 4.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16.0),
                    title: Text(
                      producto.nombre,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      producto.ingredientes,
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    leading: Icon(Icons.local_pizza, color: Colors.orangeAccent),
                  ),
                );
              },
            );
          }
          return SizedBox();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomeCubit>().loadPizzas();
        },
        child: Icon(Icons.refresh),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
