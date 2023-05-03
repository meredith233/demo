import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import '../ui/main/main_page.dart';

var indexHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MainPage();
});

class RouteManager {
  static String indexPage = '/';
  static String loginPage = '/auth/login';
  static final FluroRouter router = CustomRouter();

  static void initRouter() {
    router.define(indexPage, handler: indexHandler);
  }
}

class CustomRouter extends FluroRouter {
  late List<String> _loginList;

  set loginList(value) => _loginList = value;

  @override
  Future navigateTo(
    BuildContext context,
    String path, {
    bool replace = false,
    bool clearStack = false,
    bool maintainState = true,
    bool rootNavigator = false,
    TransitionType? transition,
    Duration? transitionDuration,
    RouteTransitionsBuilder? transitionBuilder,
    RouteSettings? routeSettings,
    bool? opaque,
  }) {
    String pathToNavigate = path;
    AppRouteMatch? routeMatched = super.match(pathToNavigate);
    String? routePathMatched = routeMatched?.route.route;
    if (routePathMatched != null) {
      //如果页面需要登录，修改路由路径到登录页面
      if (_loginList != null && !_loginList.contains(routePathMatched)) {
        pathToNavigate = RouteManager.loginPage;
      }
    }
    return super.navigateTo(
      context,
      path,
      replace: replace,
      clearStack: clearStack,
      maintainState: maintainState,
      rootNavigator: rootNavigator,
      transition: transition,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
      routeSettings: routeSettings,
      opaque: opaque,
    );
  }
}
