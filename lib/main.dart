// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:prashant/screens/contact.dart';
import 'package:prashant/screens/home.dart';
import 'package:prashant/screens/how.dart';
import 'package:prashant/screens/my_designs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    const PsScHome(),
    const PsScMyDesigns(),
    const PsScHow(),
    const PsScContact(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        extendBody: true,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_rounded,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'My Designs',
              icon: Icon(
                Icons.brush_rounded,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'How',
              icon: Icon(
                Icons.account_tree_rounded,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Contact',
              icon: Icon(
                Icons.contact_page_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
