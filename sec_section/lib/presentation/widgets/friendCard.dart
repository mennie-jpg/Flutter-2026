import 'package:flutter/material.dart';
import 'package:sec_section/constants.dart';
import 'package:sec_section/data/models/charachters.dart';

class Friendcard extends StatefulWidget {
  final screenSize;
  final CharachterModel friend;
  const Friendcard({super.key, required this.screenSize, required this.friend});

  @override
  State<Friendcard> createState() => _FriendcardState();
}

class _FriendcardState extends State<Friendcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.screenSize.height * 0.04),
      child: SizedBox(
        width: widget.screenSize.width * 0.9,
        height: 135,
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Container(
              height: 120,
              width: widget.screenSize.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: widget.screenSize.width * 0.15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(widget.friend.name),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/person' , arguments: widget.friend);
                      },
                      child: Text('Show Friend'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 15,
              child: Image.asset(widget.friend.image, height: 100),
            ),
          ],
        ),
      ),
    );
  }
}
