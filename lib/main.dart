import 'package:flutter/material.dart';
import 'package:minhaa/router/route-constants.dart';
import 'package:minhaa/router/route.dart';

void main() {
  runApp(Minhaa());
}

class Minhaa extends StatelessWidget {
  const Minhaa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhaa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: MonRouter.onGenerateRoute,
      initialRoute: opprtunitesRoute,

    );
  }
}

// Architure
/* 


*/
