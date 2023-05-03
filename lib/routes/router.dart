import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import '../ui/list/list_page.dart';
import '../ui/login/login_page.dart';
import '../ui/main/main_page.dart';

var indexHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MainPage();
});
var loginPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});
var listPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const ListPage();
});

var currentPath = '/';

class RouteManager {
  static String indexPage = '/';
  static String loginPage = '/auth/login';
  static String listPage = '/list';
  static final CustomRouter router = CustomRouter();

  static void initRouter() {
    router.define(indexPage, handler: indexHandler);
    router.define(listPage, handler: listPageHandler);
  }

  static String getCurrentRoute() {
    return currentPath;
  }
}

class CustomRouter extends FluroRouter {
  List<String> _authCodes = [];

  set authCodes(value) => _authCodes = value;

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
    // String pathToNavigate = path;
    // AppRouteMatch? routeMatched = super.match(pathToNavigate);
    // String? routePathMatched = routeMatched?.route.route;
    // if (routePathMatched != null) {
    //   //如果页面需要登录，修改路由路径到登录页面
    //   if (!_authCodes.contains(routePathMatched)) {
    //     pathToNavigate = RouteManager.loginPage;
    //   }
    // }
    currentPath = path;
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
