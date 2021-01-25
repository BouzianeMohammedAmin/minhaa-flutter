import 'package:flutter/material.dart';
import 'package:minhaa/router/route-constants.dart';
import 'package:minhaa/router/mon_route.dart';
import 'package:minhaa/values/branding_color.dart';

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
        primarySwatch: brandingPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: MonRouter.onGenerateRoute,
      initialRoute: signInRoute,
    );
  }
}

// Architure
/* 


*/
