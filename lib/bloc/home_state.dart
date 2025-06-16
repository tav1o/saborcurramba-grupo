part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoadInprogress extends HomeState {}

final class HomeLoadSucess extends HomeState {}

final class HomeLoadFailure extends HomeState {}
