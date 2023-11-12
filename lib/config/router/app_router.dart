import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palet/config/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  BuildContext get context => navigatorKey.currentContext!;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/auth',
          page: AuthStackRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: '',
              page: AuthRoute.page,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          path: '/home',
          page: HomeStack.page,
          children: [
            AutoRoute(
              path: '',
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: 'my-classifieds',
              page: MyClassifiedRoute.page,
            ),
            AutoRoute(
              path: 'create-advert',
              page: CreateAdvertRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: PaletInformationRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'advert-info',
                  page: AdvertInfoRoute.page,
                ),
                AutoRoute(
                  path: 'delivery-info',
                  page: DeliveryInfoRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}
