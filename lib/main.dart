import 'package:flutter/material.dart';
import 'package:minhaa/application/repositories/auth_repository.dart';
import 'package:minhaa/application/state/auth_state.dart';
import 'package:minhaa/router/route-constants.dart';
import 'package:minhaa/router/mon_route.dart';
import 'package:minhaa/values/branding_color.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  runApp(Minhaa());
}

class Minhaa extends StatelessWidget {
  const Minhaa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Injector(
        inject: [
          Inject(() => AuthState(AuthRepositoryImp())),
        ],
        builder: (context) => MaterialApp(
              title: 'Minhaa',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: brandingPrimaryColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              onGenerateRoute: MonRouter.onGenerateRoute,
              initialRoute: signInRoute,
            ));
  }
}
