import 'package:flutter/material.dart';
import 'package:flutter_post_bloc_ti4ta/bloc/bloc_imports.dart';
import 'package:flutter_post_bloc_ti4ta/screen/home_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ), // ThemeData
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ), // MaterialApp
    ); // BlocProvider
  }
}