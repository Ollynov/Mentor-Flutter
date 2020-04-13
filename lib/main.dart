import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() => runApp(Mentor());

class Mentor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      child: Text('Hello Yosh'),
    ),),);
  }
}
