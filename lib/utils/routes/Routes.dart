import 'package:flutter/material.dart';
import 'package:flutterfirebase/utils/routes/RoutesName.dart';
import 'package:flutterfirebase/view/home.dart';
import 'package:flutterfirebase/view/login.dart';

class Routes {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => Home());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => Login());

      default:
        // Handle the case where no route is found
        return MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            body: Container(
              child: const Text("No routes found!!"),
            ),
          );
        });
    }
  }
}
