import 'package:demo/routes/router.dart';
import 'package:demo/utils/global.dart';
import 'package:flutter/material.dart';

Drawer getCommonDrawer() {
  return Drawer(
    child: Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.stocksnap.io/img-thumbs/960w/ice-nature_PHKM6CXBLQ.jpg"),
                      fit: BoxFit.cover,
                    )),
                child: Text("你好Flutter"),
              ),
            )
          ],
        ),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.home)),
          title: const Text("首页"),
          enabled: () {
            return RouteManager.getCurrentRoute() != RouteManager.indexPage;
          }(),
          onTap: () {
            RouteManager.router
                .navigateTo(appContext(), RouteManager.indexPage);
          },
        ),
        const Divider(),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.home)),
          title: const Text("列表测试"),
          enabled: () {
            return RouteManager.getCurrentRoute() != RouteManager.loginPage;
          }(),
          onTap: () {
            RouteManager.router
                .navigateTo(appContext(), RouteManager.loginPage);
          },
        ),
      ],
    ),
  );
}

void tap() {}
