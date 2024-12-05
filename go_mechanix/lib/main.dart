//import the flutter material package to use material design components.
import 'package:flutter/material.dart';
//importing the pages for login,dashboard and register functionality.
//imports the dashboard page
import 'package:go_mechanix/pages/dashboard.dart';
//imports the login page
import 'package:go_mechanix/pages/login.dart';
//imports the register page
import 'package:go_mechanix/pages/register.dart';

void main() {
  runApp(GoMechanixApp());
}

class GoMechanixApp extends StatelessWidget {
  const GoMechanixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go_Mechanix',
      theme: ThemeData(
        primaryColor:const Color.fromARGB(255, 41, 10, 220),
         colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const Color.fromARGB(255, 41, 10, 220),
         ),
         copyWith(
          secondary:const Color.fromARGB(255, 41, 10, 220),
         ),
          textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontsize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 41, 10, 220),),
          bodyMedium: TextStyle(fontsize: 16, Colors.black),
         )

buttonTheme: const ButtonThemeData(
  buttonColor:Color.fromARGB(255, 41, 10, 220),
  textTheme:ButtonTextTheme.primary,
),
elevatedButtonTheme: ElevatedButtonThemeData(
  style:ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 41, 10, 220),
    ),
  ),
),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor:Color.fromARGB(255, 41, 10, 220),
        colorScheme:ColorScheme.fromSwatch(
          primarySwatch:Color.fromARGB(255, 41, 10, 220),
        ).copyWith(
          secondary:Color.fromARGB(255, 41, 10, 220),

        )

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Book a mechanic, to Get your car fixed!',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('WOOOLAH you created an account');
            },
            child: const Text('Create an account'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Image.network(
              'https://tinyurl.com/bdfd544u',
            ),
          ),
        ],
      ),
    );
  }
}
