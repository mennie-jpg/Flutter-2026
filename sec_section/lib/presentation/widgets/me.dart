import 'package:flutter/material.dart';
import 'package:sec_section/constants.dart';
import 'package:sec_section/data/models/charachters.dart';
import 'package:sec_section/presentation/widgets/contactCard.dart';

class Me extends StatefulWidget {
  final CharachterModel character ;
  const Me({super.key , required this.character});

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.66,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(widget.character.image),
                  ),
                ),
                SizedBox(height: 20),
                Text(widget.character.name, style: Theme.of(context).textTheme.bodyLarge),
                SizedBox(height: 20),
                Contactcard(
                  screenSize: screenSize,
                  contactIcon: Icons.phone,
                  contactString: widget.character.phone,
                ),
                SizedBox(height: 20),

                Contactcard(
                  screenSize: screenSize,
                  contactIcon: Icons.mail,
                  contactString: widget.character.email,
                ),
              ],
            ),
          ),
          SizedBox(height: 13,),
          if (widget.character.name == 'Larry')
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('/friends');
          }, child: Text('Discover Friends'))
        ],
      ),
    );
  }
}
