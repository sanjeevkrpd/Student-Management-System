

import 'package:flutter/material.dart';

class Bottomnavigator extends StatefulWidget {
  const Bottomnavigator ({super.key});

  @override
  State<Bottomnavigator> createState() => _State();
}

class _State extends State<Bottomnavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}


BottomNavigationBar bottomNavigationBar() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: "Add Record",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.view_list), // Corrected the icon here
        label: "Display Record",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.delete),
        label: "Delete Record",
      ),
    ],
  );
}
