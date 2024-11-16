import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sample API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 30
          ),
        ),
        
        // colorScheme.primary: Ini mengambil warna utama (primary) dari ColorScheme,
        backgroundColor: colorScheme.primary
      ),

      body: const Center(
        child: Text(
          "Hallo Mbrooh",
        style: TextStyle(
            color: Colors.cyan,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}