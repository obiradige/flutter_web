import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palet/application/locator.dart';
import 'package:palet/config/router/app_router.dart';
import 'package:palet/presentation/auth/cubit/auth_cubit.dart';
import 'package:palet/presentation/home/cubit/home_cubit.dart';
import 'package:palet/utils/adaptive/custom_responsive.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final AppRouter _appRouter = getIt();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AuthCubit()),
          BlocProvider(create: (_) => HomeCubit()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          builder: CustomResponsive.build,
          routerConfig: _appRouter.config(),
        ));
  }
}
