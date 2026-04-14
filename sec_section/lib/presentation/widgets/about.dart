import 'package:flutter/material.dart';
import 'package:sec_section/constants.dart';
import '../../data/models/charachters.dart';

class About extends StatefulWidget {
  final CharachterModel character;
  const About({super.key, required this.character});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: [
          Text('Highlights', style: Theme.of(context).textTheme.headlineMedium),
          Container(
            margin: EdgeInsets.all(screenSize.width * 0.05),
            child: SizedBox(
              height: screenSize.height * 0.35,
              child: PageView.builder(
                itemCount: widget.character.gallery.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    widget.character.gallery[index],
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Hobbies',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.character.hobbies.length,
              itemBuilder: (context, index) {
                return Card(
                  color: AppColors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                      radius: 15,
                    ),
                    title: Text(
                      widget.character.hobbies[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
