// home_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../datos/dato.dart'; // donde tienes menuCompleto
import '../modelo/producto.dart';

class HomeCubit extends Cubit<List<Producto>> {
  HomeCubit() : super([]);

  void loadPizzas() {
    final pizzas = menuCompleto.where((producto) => producto.categoria == 'Pizzas 🍕').toList();
    emit(pizzas);
  }
}

