import 'package:flutter/material.dart';

class SharedLayout extends StatelessWidget {
  final Widget child; // This is the page content

  const SharedLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Student Management System"),
      ),
      drawer: buildDrawer(context),
      body: child, // The main content of each page
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Icon(Icons.school, size: 50, color: Colors.purpleAccent),
                SizedBox(height: 10),
                Text(
                  "Student Management System",
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home'); // Navigate to HomePage
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/about'); // Navigate to AboutPage
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/contact'); // Navigate to ContactPage
            },
          ),
        ],
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "Add Record",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_list),
          label: "Display Record",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delete),
          label: "Delete Record",
        ),
      ],
    );
  }
}
