import 'package:flutter/material.dart';

class OpportunitiesPage extends StatefulWidget {
  OpportunitiesPage({Key key}) : super(key: key);

  @override
  _OpportunitiesPageState createState() => _OpportunitiesPageState();
}

class _OpportunitiesPageState extends State<OpportunitiesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); //this for AutomaticKeepAliveClientMixin err
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Opportunities  Page'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (ctx, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'this is Item N: ${index}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sed a. Et molestias aut culpa? Consectetur quas quod repudiandae ducimus?',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //throw UnimplementedError();
}
