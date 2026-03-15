import 'package:flutter/material.dart';
import 'package:sec_section/widgets/friendCard.dart';
import '../models/charachters.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  final List<CharacterModel> friendsList = gumballCharacters;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        titleSpacing: 0,
        title: Text('Find Friends' ,),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: screenHeight * 0.02),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: EdgeInsets.only(top: screenHeight * 0.14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
            ),
              ListView.builder(
                itemCount: friendsList.length,
                itemBuilder: (context, index) {  
                  return Friendcard(screenWidth: screenWidth, screenHeight: screenHeight, friendsList: friendsList, index: index);
                },
              ),
          ],
        ),
      ),
    );
  }
}
