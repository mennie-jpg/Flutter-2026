import 'package:flutter/material.dart';
import 'package:sec_section/models/charachters.dart';

class Friendcard extends StatefulWidget {
  final double screenWidth;

  final List<CharacterModel> friendsList;

  final double screenHeight;

  final int index;

  const Friendcard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.friendsList,
    required this.index,
  });

  @override
  State<Friendcard> createState() => _FriendcardState();
}

class _FriendcardState extends State<Friendcard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 120,
            width: widget.screenWidth * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: widget.screenWidth * .15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.friendsList[widget.index].name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/person' , arguments: widget.friendsList[widget.index]);
                  }, child: Text('Show Friend')),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 15,
            child: Image.asset(
              widget.friendsList[widget.index].image,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
