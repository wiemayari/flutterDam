import 'package:flutter/material.dart';
import './screen/login.dart';
import './screen/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define the initial route and available routes
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the Login Page
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text('Go to Login Page', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Signup Page
                Navigator.pushNamed(context, '/signup');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text('Go to Signup Page', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
