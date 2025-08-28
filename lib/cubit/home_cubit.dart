
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saborcurramba/cubit/home_state.dart';
import '../datos/dato.dart'; 


class HomeCubit extends Cubit<HomeStateCubit> {
  HomeCubit() : super(HomeInitial());

Future<void>loadPizzas()async{
  emit(HomeLoadInProgress());
  await Future.delayed(const Duration(seconds: 3));
  try {
    final pizzas = menuCompleto.where((producto) => producto.categoria == "Pizzas 🍕" ).toList();
    emit(HomeLoadSuccess(pizzas));
  } catch (_) {
    emit(HomeLoadFailure());
  }
}

  }

