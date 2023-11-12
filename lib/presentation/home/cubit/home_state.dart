// ignore_for_file: overridden_fields

part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState({this.data, this.myData, this.classifieds,});

  final List<BaseAllClassifiedModel>? data;
  final List<BaseAllClassifiedModel>? myData;
  final List<BaseClassifiedsResponse>? classifieds;


  @override
  List<Object?> get props => [data, myData, classifieds];
}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  const HomeSuccess(this.data, this.myData, this.classifieds) : super();

  @override
  final List<BaseAllClassifiedModel>? data;
  @override
  final List<BaseAllClassifiedModel>? myData;
  @override
  final List<BaseClassifiedsResponse>? classifieds;

  @override
  List<Object?> get props => [data, myData, classifieds];
}

final class HomeError extends HomeState {
  const HomeError(this.message) : super();
  final String message;
}
