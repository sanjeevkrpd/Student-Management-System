import 'package:flutter/material.dart';
import 'SharedLayout.dart';
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedLayout(
      child: Center(
        child: Text(
          "Welcome to the Contact Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
