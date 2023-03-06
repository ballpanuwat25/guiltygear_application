import 'package:flutter/material.dart';
import 'package:sp_project/character.dart';
import 'package:sp_project/etc.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';
import 'package:sp_project/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SweetNavBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SweetNaveBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SweetNaveBar extends StatefulWidget {
  const SweetNaveBar({Key? key}) : super(key: key);

  @override
  State<SweetNaveBar> createState() => _SweetNavBarState();
}

class _SweetNavBarState extends State<SweetNaveBar> {
  final List<Widget> _items = [
    ProfileScreen(),
    characterpage(),
    HOW(),
  ];

  int cIndex = 0;
  final iconLinearGradiant = List<Color>.from([
    Color.fromARGB(255, 147, 0, 0),
    Color.fromARGB(255, 147, 0, 0),
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        title: Image.asset('assets/images/Logo.png'),
      ),
      backgroundColor: Color.fromARGB(0, 248, 244, 255),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: iconLinearGradiant,
            ),
          ),
          child: Center(child: _items[cIndex])),
      bottomNavigationBar: SweetNavBar(
        currentIndex: cIndex,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: iconLinearGradiant),
          SweetNavBarItem(
              sweetActive: const Icon(Icons.person),
              sweetIcon: const Icon(
                Icons.person_outline,
              ),
              sweetLabel: 'Characte',
              iconColors: iconLinearGradiant),
          SweetNavBarItem(
              sweetActive: const Icon(Icons.book_rounded),
              sweetIcon: const Icon(
                Icons.book_outlined,
              ),
              sweetLabel: 'How to play',
              iconColors: iconLinearGradiant),
        ],
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
      ),
    );
  }
}
