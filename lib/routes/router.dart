import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import '../ui/main/main_page.dart';

var indexHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MainPage();
});

class Routes {
  static String indexPage = '/';

  static void configureRouter(FluroRouter router) {
    router.define(indexPage, handler: indexHandler);
  }
}
