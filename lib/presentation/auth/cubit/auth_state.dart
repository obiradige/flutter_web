part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();


  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {
  const AuthInitial() : super();
}

final class AuthLoading extends AuthState {
  const AuthLoading() : super();
}

final class AuthSuccess extends AuthState {
  const AuthSuccess(this.data) : super();

  final BaseAuthResponseModel data;
}

final class AuthError extends AuthState {
  const AuthError(this.message) : super();
  final String message;
}
