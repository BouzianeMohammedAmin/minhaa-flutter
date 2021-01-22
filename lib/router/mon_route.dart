import 'package:flutter/material.dart';
import 'package:minhaa/presentation/Opportunities/opportunities_page.dart';
import 'package:minhaa/presentation/auth/sign_in_page.dart';
import 'package:minhaa/presentation/auth/sign_up_page.dart';
import 'package:minhaa/presentation/home/home_page.dart';
import 'package:minhaa/presentation/not_found/not_found_page.dart';
import 'package:minhaa/router/route-constants.dart';

class MonRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case opprtunitesRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());
        break;
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPpage());
        break;
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
