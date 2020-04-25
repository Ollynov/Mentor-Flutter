import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class UserModel {
  String name = "YoshCode"
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<UserModel>.value(
      value: UserModel(),
      child: MaterialApp(
        routes: {
          '/home': (context) => HomeScreen(),
          '/slideshow': (context) => SlideshowScreen()
        },
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('push'),
              color: Colors.green,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
                // );

                //  Navigator.pushNamed(
                //     context,
                //     '/slideshow'
                //   );

                Navigator.pushNamed(context, '/slideshow');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SlideshowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slideshow'),
        backgroundColor: Colors.red[200],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('push'),
              color: Colors.green,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
                // );

                //  Navigator.pushNamed(
                //     context,
                //     '/slideshow'
                //   );

                Navigator.pushNamed(context, '/slideshow');
              },
            ),
          ],
        ),
      ),
    );
  }
}
