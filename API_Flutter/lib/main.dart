import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_api/business/cubit/post_cubit.dart';
import 'package:my_api/data/post_repo.dart';
import 'package:my_api/data/post_webservice.dart';
import 'package:my_api/dio_factory.dart';
import 'package:my_api/presentation/screen.dart';
import 'firebase_options.dart';


void main()async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PostCubit(PostRepo(PostWebservice(DioFactory.createDio(),baseUrl: "https://69ed44faaf4ff533142bafff.mockapi.io/api/v1/"))),
        child: MyWidget()),
    );
  }
}
