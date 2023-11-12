import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palet/config/router/app_router.gr.dart';

@RoutePage()
class HomeStack extends StatelessWidget {
  const HomeStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(resizeToAvoidBottomInset: false, routes: [
      HomeRoute(),
      MyClassifiedRoute(),
      CreateAdvertRoute(children: const [
        PaletInformationRoute(),
        AdvertInfoRoute(),
        DeliveryInfoRoute(),
      ]),
    ]);
  }
}
