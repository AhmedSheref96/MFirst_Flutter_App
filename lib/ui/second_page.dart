import 'package:first_flutter_app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: const Center(
          child: Text("sssssssssssss"),
        ),
      ),
    );
  }
}
