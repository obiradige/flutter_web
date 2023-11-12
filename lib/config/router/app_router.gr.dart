// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:palet/config/router/stacks/auth/auth_stack.dart' as _i3;
import 'package:palet/config/router/stacks/home/home_stack.dart' as _i7;
import 'package:palet/presentation/auth/view/auth_page.dart' as _i2;
import 'package:palet/presentation/home/view/create_advert_page.dart' as _i4;
import 'package:palet/presentation/home/view/home_page.dart' as _i6;
import 'package:palet/presentation/home/view/my_classified_page.dart' as _i8;
import 'package:palet/presentation/home/view/subpages/advert_info_page.dart'
    as _i1;
import 'package:palet/presentation/home/view/subpages/delivery_info_page.dart'
    as _i5;
import 'package:palet/presentation/home/view/subpages/palet_information_page.dart'
    as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AdvertInfoRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AdvertInfoPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    AuthStackRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthStackPage(),
      );
    },
    CreateAdvertRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CreateAdvertPage(),
      );
    },
    DeliveryInfoRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DeliveryInfoPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.HomePage(key: args.key),
      );
    },
    HomeStack.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeStack(),
      );
    },
    MyClassifiedRoute.name: (routeData) {
      final args = routeData.argsAs<MyClassifiedRouteArgs>(
          orElse: () => const MyClassifiedRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.MyClassifiedPage(key: args.key),
      );
    },
    PaletInformationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PaletInformationPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AdvertInfoPage]
class AdvertInfoRoute extends _i10.PageRouteInfo<void> {
  const AdvertInfoRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AdvertInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdvertInfoRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i10.PageRouteInfo<void> {
  const AuthRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthStackPage]
class AuthStackRoute extends _i10.PageRouteInfo<void> {
  const AuthStackRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthStackRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthStackRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CreateAdvertPage]
class CreateAdvertRoute extends _i10.PageRouteInfo<void> {
  const CreateAdvertRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CreateAdvertRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAdvertRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DeliveryInfoPage]
class DeliveryInfoRoute extends _i10.PageRouteInfo<void> {
  const DeliveryInfoRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DeliveryInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryInfoRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i10.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<HomeRouteArgs> page =
      _i10.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomeStack]
class HomeStack extends _i10.PageRouteInfo<void> {
  const HomeStack({List<_i10.PageRouteInfo>? children})
      : super(
          HomeStack.name,
          initialChildren: children,
        );

  static const String name = 'HomeStack';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MyClassifiedPage]
class MyClassifiedRoute extends _i10.PageRouteInfo<MyClassifiedRouteArgs> {
  MyClassifiedRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MyClassifiedRoute.name,
          args: MyClassifiedRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyClassifiedRoute';

  static const _i10.PageInfo<MyClassifiedRouteArgs> page =
      _i10.PageInfo<MyClassifiedRouteArgs>(name);
}

class MyClassifiedRouteArgs {
  const MyClassifiedRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'MyClassifiedRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.PaletInformationPage]
class PaletInformationRoute extends _i10.PageRouteInfo<void> {
  const PaletInformationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PaletInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaletInformationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
