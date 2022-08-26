import 'package:app/models/cluster.dart';
import 'package:app/models/shg.dart';
import 'package:flutter/material.dart';

import 'pages/login.dart';

Route? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case AllRoutesConstants.login:
      return MaterialPageRoute(builder: (_) => LoginPage());

    case AllRoutesConstants.homeAO:
      final cluster = settings.arguments as Cluster;
      return MaterialPageRoute(
          builder: (_) => AOHome(
            cluster: cluster,
          ));
    case AllRoutesConstants.homeSHG:
      final shg = settings.arguments as SHG;
      return MaterialPageRoute(
          builder: (_) => HomePage(
            shg: shg,
          ));

  }
}

class AllRoutesConstants {
  AllRoutesConstants._();

  static const login = 'login';

  static const homeSHG = 'home';
  static const homeAO = 'aoHome';

}