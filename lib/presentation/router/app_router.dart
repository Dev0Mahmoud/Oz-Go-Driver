import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/test.dart';


class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Test());
    }
  }
}