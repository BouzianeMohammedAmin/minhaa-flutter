import 'package:flutter/material.dart';
import 'package:minhaa/presentation/Opportunities/opportunities_page.dart';
import 'package:minhaa/presentation/not_found/not_found_page.dart';
import 'package:minhaa/router/route-constants.dart';

class MonRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case opprtunitesRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
