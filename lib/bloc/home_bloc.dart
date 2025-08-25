import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:saborcurramba/modelo/producto.dart';
import '../datos/dato.dart'; 

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<LoadHamburguesasEvent>((event, emit) async {
      emit(HomeLoadInprogress());
      try {
        final hamburguesas = menuCompleto.where((producto) => producto.categoria == 'Hamburguesas').toList();
        emit(HomeLoadSuccess(hamburguesas));
      } catch (_) {
        emit(HomeLoadFailure());
      }
    });
  }
}


