import 'package:flutter/material.dart';
import 'package:sec_section/constants.dart';

class Contactcard extends StatelessWidget {
  final screenSize;
  final IconData contactIcon;
  final String contactString;

  const Contactcard({super.key , required this.screenSize ,required this.contactIcon , required this.contactString});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 40,
                  width: screenSize.width * 0.7,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.orangeCTA, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(contactIcon),
                      SizedBox(width: 15),
                      Text(contactString ,style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                );
  }
}