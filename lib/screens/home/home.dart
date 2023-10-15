import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../styles/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    // Your tab content
    Column(
      children: [
        Text("Tab 1 Content"),
      ],
    ),
    Column(
      children: [
        Text("Tab 2 Content"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: AppBar(
            backgroundColor: StylesPlus.bgColor,
            title: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.waving_hand),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Dearie!", style: TextStyle(fontSize: 18)),
                        Text(
                          "Ready to take charge of your skincare journey?",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Container(
                  width: 200,  // Set the width to your desired value
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          // Add the action you want when the clear icon is clicked
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Search...",
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),

              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Add the action you want when the search icon is clicked
                },
              ),
            ],
          ),
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_2),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.menu_1),
            label: 'Tab 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tab 4',
          ),
        ],
      ),
    );
  }
}
