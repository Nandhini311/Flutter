import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          appBar: AppBar(
            backgroundColor: Colors.pink[300],
            title: const Center(
              child: Text('I am happy'),
            ),
          ),
          body: const Center(
            child: Image(
              image: AssetImage('images/happy.png'),
            ),
          ),
        ),
      ),
  );
}
