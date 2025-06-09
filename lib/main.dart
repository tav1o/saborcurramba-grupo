import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saborcurramba/bloc/home_bloc.dart';

import 'vistas/cargando.dart';
import 'vistas/carta.dart';
import 'vistas/falla.dart';
import 'vistas/inicio.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'futbol pro',
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSucess) {
              return carta();
            } else if (state is HomeLoadInprogress) {
              return cargando();
            } else if (state is HomeLoadFailure) {
              return falla();
            }
            return inicio();
          },
        ),
      ),
    );
  }
}
