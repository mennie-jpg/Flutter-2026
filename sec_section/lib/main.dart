import 'package:flutter/material.dart';
import 'package:sec_section/models/charachters.dart';
import 'package:sec_section/Screens/Person.dart';
import 'package:sec_section/Screens/friends.dart';
import 'package:sec_section/widgets/me.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'English',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.BG,
          surface: AppColors.BG,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 25 , color: AppColors.darkText , fontFamily: 'English'),
          iconTheme:  IconThemeData(color: AppColors.darkText, size: 30),
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.BG,
          selectedItemColor: AppColors.orangeCTA,
          unselectedItemColor: AppColors.petroleum,
        ),
        iconTheme:  IconThemeData(color: AppColors.petroleum, size: 24),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.orangeCTA,
            foregroundColor: AppColors.white,
            textStyle: TextStyle(fontSize: 17 , color: AppColors.white , fontFamily: 'English'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
            color:AppColors.lightText,
          ),
          bodyMedium: TextStyle(fontSize: 15, color: AppColors.darkText),
          bodyLarge: TextStyle(fontSize: 25, color: AppColors.darkText),
        ),
      ),
      initialRoute: '/person',
      routes: {
        '/person' : (context) => Person(),
        '/friends' : (context) => Friends(),
      },
    );
  }
}
