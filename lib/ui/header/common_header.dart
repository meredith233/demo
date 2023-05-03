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
        const ListTile(
          leading: CircleAvatar(child: Icon(Icons.home)),
          title: Text("我的空间"),
        ),
        const Divider(),
      ],
    ),
  );
}
