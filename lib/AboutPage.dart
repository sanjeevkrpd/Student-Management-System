import 'package:flutter/material.dart';
import 'SharedLayout.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedLayout(
      child: Center(
        child: Text(
          "Welcome to the About Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
