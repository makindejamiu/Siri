import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Suggestions(),
    ),
  ));
}

class Suggestions extends StatefulWidget {
  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  int ballSuggestion = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballSuggestion = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('assets/images/ball$ballSuggestion.png'),
      ),
    );
  }
}
