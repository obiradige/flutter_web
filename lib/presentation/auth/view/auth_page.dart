import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palet/presentation/auth/cubit/auth_cubit.dart';
import 'package:palet/widgets/main_button.dart';
import 'package:palet/widgets/main_textfield.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(body: BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: SizedBox(
                  child: Lottie.asset('assets/animation/login.json'),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: Center(
                  child: SizedBox(
                    child: _buildForm(size: size, context: context),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ));
  }

  Widget _buildForm({required Size size, required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          MainTextField(
            hintText: 'E-post',
            controller: context.read<AuthCubit>().emailController,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          MainTextField(
            hintText: 'Şifre',
            controller: context.read<AuthCubit>().passwordController,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          MainButton(
            label: 'Giriş Yap',
            onPressed: () {
              context.read<AuthCubit>().login(
                    context.read<AuthCubit>().emailController.text,
                    context.read<AuthCubit>().passwordController.text,
                    "",
                    context,
                  );
            },
          ),
        ],
      ),
    );
  }
}
