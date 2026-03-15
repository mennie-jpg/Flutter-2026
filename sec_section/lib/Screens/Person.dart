import 'package:flutter/material.dart';
import 'package:sec_section/models/charachters.dart';
import 'package:sec_section/widgets/MeDetails.dart';
import 'package:sec_section/widgets/me.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
      CharacterModel me = CharacterModel(
      name: 'Larry',
      image: 'images/me.png',
      email: 'help_us_Larry@no.com',
      phone: '01012345678',
      gallery: ['images/me1.jpeg', 'images/me2.jpeg'],
      hobbies: [
        'Taking 5-minute naps',
        'Counting his paychecks',
        'Meditating to stay calm',
      ],
    );

  int selctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    CharacterModel person = (ModalRoute.of(context)?.settings.arguments as CharacterModel?) ?? me ;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final List<Widget> pages = [
      Me(screenWidth: screenWidth, screenHeight: screenHeight, person: person),
      MeDetails(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
        person: person,
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: selctedIndex,
        onTap: (value) {
          setState(() {
            selctedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle_outlined),
            label: 'me',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'About'),
        ],
      ),
      body: pages[selctedIndex],
    );
  }
}
