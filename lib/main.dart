import 'package:flutter/material.dart';
import 'package:flutterfirebase/utils/routes/Routes.dart';
import 'package:flutterfirebase/utils/routes/RoutesName.dart';
import 'package:flutterfirebase/view/login.dart';

void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.getRoutes,
    );
  }
}
