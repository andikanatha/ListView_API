import 'package:flutter/material.dart';
import 'package:listview_flutter/API/ListAllFootbal.dart';
import 'package:listview_flutter/ListAllFootball.dart';
import 'package:listview_flutter/Tabs.dart';
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
        primarySwatch: Colors.teal,
      ),
      home: const ListAllFootball(),
    );
  }
}

