import 'package:flutter/material.dart';

class Global {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
}

BuildContext appContext() {
  return Global.navigatorKey.currentState!.context;
}
