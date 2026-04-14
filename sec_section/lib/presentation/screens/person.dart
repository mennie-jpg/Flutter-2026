import 'package:flutter/material.dart';

import '../../data/models/charachters.dart';
import '../widgets/me.dart';
import '../widgets/about.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  int selectedItem =0;

  @override
  Widget build(BuildContext context) {
    CharachterModel character = (ModalRoute.of(context)?.settings.arguments as CharachterModel?) ?? CharachterModel.larryObject;
    final List<Widget> pages = [Me(character:character ,), About(character:character ,)];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: selectedItem,
        onTap: (value) {
          setState(() {
            selectedItem = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle_outlined),
            label: 'me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'about',
          ),
        ],
      ),
      body: pages[selectedItem],
    );
  }
}
