part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadInprogress extends HomeState {}

class HomeLoadSuccess extends HomeState {
  final List<Producto> productos;

  HomeLoadSuccess(this.productos);
}

class HomeLoadFailure extends HomeState {}
