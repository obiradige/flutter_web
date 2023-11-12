import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:palet/data/services/auth/auth_services.dart';
import 'package:palet/domain/model/auth_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final AuthServicesImpl authServices = AuthServicesImpl();

  Future<void> login(
    String email,
    String password,
    String fcmToken,
    BuildContext context,
  ) async {
    emit(const AuthLoading());
    try {
      final BaseAuthResponseModel data =
          await authServices.login(email, password, fcmToken);
      emit(AuthSuccess(data));

      context.router.pushNamed('/home');
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
