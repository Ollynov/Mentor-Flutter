import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: Colors.redAccent),
      body: Center(child: Text('Home Screen'))
    );
  }


}