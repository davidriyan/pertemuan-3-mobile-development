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
      body: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            // color: Colors.amberAccent,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 10),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Snackbar muncul',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              backgroundColor: Colors.amberAccent,
              duration: Duration(seconds: 3),
              action: SnackBarAction(
                label: 'Close',
                onPressed: () {},
                backgroundColor: Colors.black,
              ),
            ),
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}


/// ada dua state
/// 1. stateless => tidak ada perubahan di sebuah halaman atau screen
/// 2. statefull => ada perubahan di sebuah halaman atau screen