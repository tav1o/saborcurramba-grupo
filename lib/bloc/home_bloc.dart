import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:http/http.dart' as http;
import 'package:saborcurramba/modelo/producto.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async {
      emit(HomeLoadInprogress());
      final url = Uri.parse(
        'https://run.mocky.io/v3/3d2fe42e-5fd9-4104-a9aa-07e4ba593ec6',
      );
      final response = await http.get(url);

      if (response.statusCode == 200) {
        emit(HomeLoadSucess());
      } else {
        emit(HomeLoadFailure());
      }
    });
  }
}
