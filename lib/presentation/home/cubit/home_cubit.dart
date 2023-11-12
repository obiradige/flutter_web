import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:palet/data/services/home/home_services.dart';
import 'package:palet/domain/model/all_classified_model.dart';
import 'package:palet/domain/model/classified_response_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
    final GlobalKey<FormBuilderState> paletInfoformKey = GlobalKey<FormBuilderState>();
    final GlobalKey<FormBuilderState> advertInfoformKey = GlobalKey<FormBuilderState>();
    final GlobalKey<FormBuilderState> deliveryInfoformKey = GlobalKey<FormBuilderState>();

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final HomeServicesImpl homeServicesImpl = HomeServicesImpl();
  Future<void> getAllClassified() async {
    emit(HomeLoading());

    await Future.delayed(const Duration(seconds: 1));
    try {
      final List<BaseAllClassifiedModel>? data =
          await HomeServicesImpl().getAllClassified();
      await Future.delayed(const Duration(seconds: 1));
      emit(HomeSuccess(data!, const [], const []),);
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

  Future<void> getMyClassified({required String companyId}) async {
     await Future.delayed(const Duration(seconds: 1));
    emit(HomeLoading());
     await Future.delayed(const Duration(seconds: 1));
    try {
      final List<BaseAllClassifiedModel>? data =
          await HomeServicesImpl().getMyClassified(companyId: companyId);

      emit(HomeSuccess(const [], data!, const []));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

  Future<void> getClassifiedCategories() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(HomeLoading());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final List<BaseClassifiedsResponse> data =
          await HomeServicesImpl().getClassifield();

      emit(HomeSuccess(const [], const [], data));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
  
}
