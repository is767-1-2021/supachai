import 'package:flutter/material.dart';
import 'package:midterm_app/pages/blank_page.dart';
import 'package:midterm_app/pages/bookmarks_page.dart';
import 'package:midterm_app/pages/menu_page.dart';
import 'package:midterm_app/provider/bookmark_model.dart';
import 'package:provider/provider.dart';
import 'pages/favorite_page.dart';
import 'pages/userprofile_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BookmarkBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.amber,
          accentColor: Colors.blue[200],
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.black),
          ),
        ),
        home: MenuPage(),
        //debugShowCheckerModeBanner: false,
        routes: <String, WidgetBuilder>{
          //'/1': (context) => MyHomePage(title: 'Filter list example'),
          //'/2': (context) => RegisterPage(),
          '/0': (context) => MenuPage(),
          '/1': (context) => FavoritePage(),
          '/2': (context) => ProfilePage(),
          '/3': (context) => bookMarkPage(),
          '/4': (context) => blankPage(),
        });
  }
}
