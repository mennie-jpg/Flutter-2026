import 'package:flutter/material.dart';
import 'package:sec_section/constants.dart';
import 'package:sec_section/models/charachters.dart';

class Me extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final CharacterModel person;
  const Me({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.66,
            decoration: BoxDecoration(
              color: Colors.white,
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
          
            child: Stack(
              alignment: AlignmentGeometry.topCenter,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Image.asset(person.image),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(person.name, style: Theme.of(context).textTheme.bodyLarge),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: screenWidth * 0.7,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.orangeCTA, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.phone ),
                          SizedBox(width: 15),
                          Text(person.phone , style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: screenWidth * 0.7,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.orangeCTA, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.mail,),
                          SizedBox(width: 15),
                          Text(person.email , style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 13,),
          if (person.name == 'Larry')
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/friends' );
          }, child: Text('Discover Friends'  )
          )
        ],
      ),
    );
  }
}
