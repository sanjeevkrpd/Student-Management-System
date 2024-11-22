import 'package:flutter/material.dart';
import 'SharedLayout.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedLayout(
      child: Center(
        child: Text(
          "Welcome to the Home Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
