import 'package:flutter/material.dart';
import 'package:go_mechanix/pages/dashboard.dart';
import 'package:go_mechanix/pages/login.dart';
import 'package:go_mechanix/pages/register.dart';

void main() {
  runApp(const GoMechanixApp());
}

class GoMechanixApp extends StatelessWidget {
  const GoMechanixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go_Mechanix',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 41, 10, 220),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 41, 10, 220),
          secondary: const Color.fromARGB(255, 41, 10, 220),
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 41, 10, 220),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color.fromARGB(255, 41, 10, 220),
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 41, 10, 220),
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 41, 10, 220),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ).copyWith(
          primary: const Color.fromARGB(255, 41, 10, 220),
          secondary: const Color.fromARGB(255, 41, 10, 220),
        ),
      ),
      home: const MyHomePage(),
      routes: {
        '/dashboard': (context) => const Dashboard(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go_Mechanix'),
      ),
      body: Center(
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
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              child: const Text('Dashboard'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Image.network(
                'https://tinyurl.com/bdfd544u',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
