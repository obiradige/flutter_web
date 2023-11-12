import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palet/config/router/app_router.gr.dart';

@RoutePage()
class AuthStackPage extends StatelessWidget {
  const AuthStackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoTabsScaffold(
        routes: [AuthRoute()]);
  }
}