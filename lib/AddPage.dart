import 'package:flutter/material.dart';
import 'package:studentmanagementsystem/BottomNavigator.dart';
class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Student Data"),
      ),
      bottomNavigationBar: const Bottomnavigator(),
    );
  }
}
