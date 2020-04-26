import 'package:flutter/material.dart';
import 'package:mentor/shared/shared.dart';
import 'package:mentor/shared/bottom_nav.dart';

class PsychologistsScreen extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Psychologists'), backgroundColor: Colors.amber),
      body: Center(child: Text('Psychologists Page')),
      bottomNavigationBar: AppBottomNav(),
    );
  }


}