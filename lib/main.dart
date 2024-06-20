import 'package:flutter/material.dart';
import 'package:instagram_clone_app/component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {  
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        title: const Text('Api App'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 43, 118),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 43, 118),
        child: const Center(
          child: Text(
            "Ameen Ali Is Here ",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 23, 78, 171),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Colors.amber,
              width: double.infinity,
              height: 150,
            ),
            const CircleAvatar(
              radius: 60,
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/5987/5987424.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomCard(),
          ],
        ),
      ),
    );
  }
}
