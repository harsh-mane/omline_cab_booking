import 'package:flutter/material.dart';

// Renaming the class to avoid naming conflicts
class ServiceUserSignUpScreen extends StatefulWidget {
  const ServiceUserSignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ServiceUserSignUpScreenState createState() => _ServiceUserSignUpScreenState();
}

class _ServiceUserSignUpScreenState extends State<ServiceUserSignUpScreen> {
  int _selectedIndex = 0; // Keeps track of the selected tab index

  // List of widgets for each tab
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),      // Home tab content
    const ServicesPage(),  // Services tab content
    const RatingPage(),    // Rating tab content
    ProfilePage(),   // Profile tab content
  ];

  // Method to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service User Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Service User Sign Up",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            // Username field
            const TextField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            // Email field
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            // Password field
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Register button
            ElevatedButton(
              onPressed: () {
                // Registration logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Service User Registered!")),
                );
              },
              child: const Text("Register"),
            ),
            const SizedBox(height: 20),
            // Display content based on the selected tab
            Expanded(child: _widgetOptions[_selectedIndex]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        












        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rating',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected tab
        onTap: _onItemTapped, // Handle tab taps
      ),
    );
  }
}

// Widget for Home page content
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Welcome to the Home Page!",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

// Widget for Services page content
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Services Offered",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

// Widget for Rating page content
class RatingPage extends StatelessWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Your Ratings",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

// Widget for Profile page content
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profile Information",
        style: TextStyle(fontSize: 20),
      ),
    
    );
    
  }
}
