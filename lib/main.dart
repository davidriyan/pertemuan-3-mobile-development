import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white, Colors.green],
            ),
          ),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'data 1',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text(
            'data 2',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text(
            'data 3',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Tombol di klik!');
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Snackbar muncul')));
        },
        child: Icon(Icons.check),
      ),
    );
  }
}


/// ada dua state
/// 1. stateless => tidak ada perubahan di sebuah halaman atau screen
/// 2. statefull => ada perubahan di sebuah halaman atau screen