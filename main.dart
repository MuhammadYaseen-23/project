import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LAB01',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = '';

  void showMessage() {
    setState(() {
      message = 'WELLCOME TO KASHMORE';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DEMO APP')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ABDUL RAB BALOCH',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 10, 9, 7),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Roll NO: 23-BS-CS-19',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(221, 18, 17, 17),
                ),
              ),

              const SizedBox(height: 25),

              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 191, 181, 209),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'HELLO ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 68, 90, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton(
                onPressed: showMessage,
                child: const Text('CLICK ME!', style: TextStyle(fontSize: 18)),
              ),

              const SizedBox(height: 30),

              Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 139, 12, 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
