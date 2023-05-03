import 'package:flutter/material.dart';

Drawer getCommonDrawer(BuildContext context) {
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
          title: const Text("我的空间"),
          onTap: () {
            print('');
          },
        ),
        const Divider(),
      ],
    ),
  );
}

void tap() {}
