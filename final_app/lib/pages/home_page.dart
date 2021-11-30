import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.calendar_today_rounded,
              size: 25,
            ),
            onPressed: () {
              setState(
                () {
                  print("Opening Calendar");
                },
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert_rounded,
              size: 25,
            ),
            onPressed: () {
              setState(
                () {
                  print("Opening Calendar");
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, size: 25),
      ),
    );
  }
}
