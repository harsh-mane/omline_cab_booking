import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/service_provider/TabScreen/EarningsTabPage.dart';
import 'package:rider_app/service_provider/TabScreen/HomeTabPage.dart';
import 'package:rider_app/service_provider/TabScreen/ProfileTabPage.dart';
import 'package:rider_app/service_provider/TabScreen/RatingTabPage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin
     {
  int selectedTab = 0;
  TabController? tabController;
  onItemClicked(int index) {
    setState(() {
      {
        selectedTab = index;
        tabController!.index = index;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: tabController, physics:const NeverScrollableScrollPhysics(), 
      children: const [
        HomeTabPage(),
        EarningsTabPage(),
        ProfileTabPage(),
        RatingTabPage(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Earnings"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Ratings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: selectedTab,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        onTap: onItemClicked, 
      ),
    );
  }
}
