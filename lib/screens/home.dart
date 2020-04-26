import 'package:flutter/material.dart';
import 'package:mentor/shared/shared.dart';
import 'package:mentor/shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: Colors.redAccent),
      body: Center(child: Text('Home Screen')),
      bottomNavigationBar: AppBottomNav(),
    );
  }

}