import 'package:flutter/material.dart';

import '../routing/base_routing.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: mBaseRoutes,
      color: Colors.white,
      initialRoute: mBaseRoutes.keys.first,
    );
  }
}
