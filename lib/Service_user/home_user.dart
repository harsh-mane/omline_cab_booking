import 'package:flutter/material.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (query) {
                // Handle search text change here
                print("Search query: $query");
              },
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle search functionality here
              // For example, you can print the search query to the console
              print("Search button pressed: ${_searchController.text}");
            },
            icon: const Icon(Icons.search), // Add an actual icon here
          ),
        ],
      ),
    );
  }
}
