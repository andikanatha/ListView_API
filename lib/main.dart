import 'package:flutter/material.dart';
import 'package:listview_flutter/listView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Siswa PPLG 01',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home:  ListViewActivity(),
    );
  }
}

