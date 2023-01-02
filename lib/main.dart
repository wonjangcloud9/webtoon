import 'package:flutter/material.dart';

class Wonjang {
  String name;

  Wonjang({required this.name});
}

void main() {
  var wonjang = Wonjang(name: "Wonjang");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            elevation: 10,
            centerTitle: true,
            title: Text('App bar  title'),
          ),
          body: Center(
            child: Text('Hello World'),
          ),
        ));
  }
}
