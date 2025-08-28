
import 'package:saborcurramba/modelo/producto.dart';

sealed class HomeStateCubit {}

class HomeInitial extends HomeStateCubit {}

class HomeLoadInProgress extends HomeStateCubit {}

class HomeLoadSuccess extends HomeStateCubit {
  final List<Producto>productos;
   HomeLoadSuccess(this.productos);
}

class HomeLoadFailure extends HomeStateCubit {}
