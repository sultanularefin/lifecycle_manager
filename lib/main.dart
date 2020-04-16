import 'package:flutter/material.dart';



import 'package:lifecycle_manager/locator.dart';
import 'package:lifecycle_manager/lifecycle_manager.dart';

//void main() => runApp(MyApp());


void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LifeCycleManager( child: MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: FlutterLogo(),

        ),
      ),
    ),
    );

  }
}

