import 'package:flutter/material.dart';

import '../common/header.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  final String title = "list test";

  @override
  State<ListPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListPage> {
  List<Widget> dataList = [];

  void _incrementCounter() {
    setState(() {
      dataList.add(const Text('value'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getCommonDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: dataList,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
