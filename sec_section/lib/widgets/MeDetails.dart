import 'package:flutter/material.dart';
import 'package:sec_section/constants.dart';
import 'package:sec_section/models/charachters.dart';

class MeDetails extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final CharacterModel person;
  const MeDetails({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.person,
  });

  @override
  State<MeDetails> createState() => _MeDetailsState();
}

class _MeDetailsState extends State<MeDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(child: Text('Highlights' ,style: Theme.of(context).textTheme.headlineMedium,)),
          Container(
            margin: EdgeInsets.all(widget.screenWidth * 0.05),
            child: SizedBox(
              height: widget.screenHeight * 0.35,
              child: PageView.builder(
                itemCount: widget.person.gallery.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    widget.person.gallery[index],
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('Hoppies' , style: Theme.of(context).textTheme.headlineMedium, )),
          Expanded(
            child: ListView.builder(
              itemCount: widget.person.hobbies.length,
              itemBuilder: (context, index) {
                return Card(
                  color: AppColors.white,
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index+1}' ,), radius: 15),
                    title: Text(widget.person.hobbies[index],style: Theme.of(context).textTheme.bodyMedium,),
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
