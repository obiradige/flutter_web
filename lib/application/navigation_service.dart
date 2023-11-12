import 'package:auto_route/auto_route.dart';
import 'package:palet/config/router/app_router.dart';

class NavigationService {
  final AppRouter _router = AppRouter();

  AppRouter get router => _router;

  get context => _router.navigatorKey.currentContext!;

  Future<void> navigateTo(PageRouteInfo pageRouteInfo) async {
    await Future.delayed(const Duration(milliseconds: 200), () async {
      await _router.push(pageRouteInfo);
    });
  }

  Future<void> pushAndPopUntil(String pathName) async {
    await Future.delayed(const Duration(milliseconds: 200), () async {
      await _router.pushAndPopUntil(PageRouteInfo(pathName), predicate: (_) => false);
    });
  }

  Future<void> pop() async {
    await Future.delayed(const Duration(milliseconds: 200), () async {
      await _router.pop();
    });
  }
}
