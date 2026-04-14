import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business/cubit/characters_cubit.dart';
import 'constants.dart';
import 'data/repository/charachters_repository.dart';
import 'data/web_services/charachters_web_service.dart';
import 'presentation/screens/friends.dart';
import 'presentation/screens/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'English',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.BG,
          surface: AppColors.BG
          ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 25 , color: AppColors.darkText , fontFamily: 'English'),
          iconTheme: IconThemeData(
            color: AppColors.darkText,
            size: 30,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.BG,
          selectedItemColor: AppColors.orangeCTA,
          unselectedItemColor: AppColors.petroleum
        ),
        iconTheme: IconThemeData(
          color: AppColors.petroleum,
          size: 24
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.orangeCTA,
            foregroundColor: AppColors.white,
            textStyle: TextStyle(
              fontSize: 17,
              fontFamily: 'English',
              color: AppColors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          )
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle( fontSize: 23 , fontWeight: FontWeight.w700 , color: AppColors.lightText),
          bodyMedium: TextStyle(fontSize: 15 , color: AppColors.darkText),
          bodyLarge: TextStyle(fontSize: 25 , color: AppColors.darkText)
        )
      ),
      initialRoute: '/person',
      routes: {
        '/person' : (context)=> Person(),
        '/friends' : (context)=> BlocProvider(
          create: (context) => CharactersCubit( CharachtersRepository(CharachtersWebService()))..getAllCharachters(),
          child: Friends(),
        )
      },
    );
  }
}
