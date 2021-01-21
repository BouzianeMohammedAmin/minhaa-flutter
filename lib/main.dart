import 'package:flutter/material.dart';
import 'package:minhaa/presentation/Opportunities/opportunities_page.dart';

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
      home: OpportunitiesPage()
    );
  }
}


// Architure 
/* 


*/   