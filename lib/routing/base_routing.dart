import 'package:first_flutter_app/ui/home_page.dart';
import 'package:first_flutter_app/ui/second_page.dart';
import 'package:flutter/material.dart';

const String homeRouteKey = '/home';
const String secondPageRoute = '/second';

Map<String, WidgetBuilder> mBaseRoutes = {
  homeRouteKey: (context) => const HomePage(),
  secondPageRoute: (context) => const SecondPage(),
};
