import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Setting', 'Favorite'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(2, (index) {
          return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/${index + 1}');
                //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //  content: Text('Tap at $index'),
                //));
              },
              child: Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      '${entries[index]}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  )));
        }),
      ),
    );
  }
}

class favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: FavoriteButton(),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
