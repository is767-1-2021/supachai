import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:midterm_app/pages/blank_page.dart';
import 'package:midterm_app/pages/bookmarks_page.dart';
import 'package:midterm_app/pages/userprofile_page.dart';
import 'favorite_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(
              width: 10,
            ),
            Text('Food Recipe'),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritePage(),
                ),
              );
            },
            label: Text('1.Go to FavoritePage'),
            icon: Icon(Icons.favorite),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            label: Text('2.Go to Profile'),
            icon: Icon(Icons.person_add),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => bookMarkPage(),
                ),
              );
            },
            label: Text('3.Go to BookmarkPage'),
            icon: Icon(Icons.menu_book),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => blankPage(),
                ),
              );
            },
            label: Text('4.Go to BlankPage'),
            icon: Icon(Icons.cached_rounded),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => blankPage(),
                ),
              );
            },
            label: Text('5.Go to BlankPage'),
            icon: Icon(Icons.cached_rounded),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => blankPage(),
                ),
              );
            },
            label: Text('6.Go to BlankPage'),
            icon: Icon(Icons.cached_rounded),
          ),
        ],
      ),
    );
  }
}
