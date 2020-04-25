import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class UserModel {
  String name = "YoshCode";
}

var stream = Stream.fromIterable([UserModel()]);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: stream,
      child: MaterialApp(
        routes: {
          '/home': (context) => HomeScreen(),
        },
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
//  final Firestore db = Firestore.instance;

 @override
 Widget build(BuildContext context) {

   var user = Provider.of<UserModel>(context);

   return Scaffold(
     body: Center(
       child: Text(user.name),
     ),
   );
 }
}
