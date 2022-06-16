import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//todo: Navigator
//todo: init localize
//todo: base bloc, base widget, etc

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
      // routes: <String, WidgetBuilder>{
      //   ArticleDetail.routeKey: (BuildContext context) =>Container(),
      // },
    );
  }
}
