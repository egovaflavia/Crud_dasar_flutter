import 'package:flutter/material.dart';
import 'package:kanvas/Home.dart';
import 'package:kanvas/login.dart';
import 'package:kanvas/page/myhome.dart';
import 'package:kanvas/page/tambahbarang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = <String, WidgetBuilder>{
    MyHome.routename: (context) => MyHome(),
    TambahBarang.routename: (context) => TambahBarang(),
    Login.routename: (context) => Login(),
    Home.routename: (context) => Home(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: _router,
      initialRoute: MyHome.routename,
    );
  }
}
