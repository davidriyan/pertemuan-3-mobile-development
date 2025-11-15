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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Hello World'),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          toolbarHeight: 100,
          actions: [Icon(Icons.search)],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
          ),
        ),

        body: Text(
          'Hello World saokdhasofhaosfhaoifh',
          style: TextStyle(
            fontSize: 40,
            color: Colors.amber,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}


/// ada dua state
/// 1. stateless => tidak ada perubahan di sebuah halaman atau screen
/// 2. statefull => ada perubahan di sebuah halaman atau screen