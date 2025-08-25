import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';

import '../cubit/home_cubit.dart';
import 'bloc_tab.dart';
import 'cubit_tab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('carta de sabor curramba '),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Bloc'),
              Tab(text: 'Cubit'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocProvider(
              create: (_) => HomeBloc()..add(LoadHamburguesasEvent()),
              child: BlocTab(),
            ),
            BlocProvider(
              create: (_) => HomeCubit()..loadPizzas(),  
              child: CubitTab(),
            ),
          ],
        ),
      ),
    );
  }
}

