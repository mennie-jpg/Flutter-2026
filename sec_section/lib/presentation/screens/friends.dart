import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_section/constants.dart';
import 'package:sec_section/presentation/widgets/friendCard.dart';
import 'package:sec_section/business/cubit/characters_cubit.dart';


class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Find Friends'),
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height,
            margin: EdgeInsets.only(top: screenSize.height * 0.14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -5),
                ),
              ],
            ),
          ),

          BlocBuilder<CharactersCubit, CharactersState>(
            builder: (context, state) {
              if( state is charachtersLoaded)
             { return ListView.builder(
                itemCount: state.charachters.length,
                itemBuilder: (context, index) {
                  return Friendcard(
                    screenSize: screenSize,
                    friend: state.charachters[index],
                  );
                },
              );
            }else{
              return Text('no friends to discover');
            }
            },
          ),
        ],
      ),
    );
  }
}
