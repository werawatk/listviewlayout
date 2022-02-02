import 'package:app_listview/listviewbuilder.dart';
import 'package:app_listview/listviewlayout.dart';
import 'package:app_listview/listviewubru.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
       ),
       home: ListViewUbruPage(),
    );
  }
}