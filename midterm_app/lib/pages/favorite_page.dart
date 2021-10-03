import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:midterm_app/pages/bookmarks_page.dart';
import 'package:midterm_app/provider/bookmark_model.dart';
import 'package:midterm_app/models/food_model.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  String title = 'FavoriteButton';
  List foodList = [
    {
      'title': 'Kaijiew1',
      'subtitle': 'this is item1',
      'status': 'false',
    },
    {
      'title': 'Kaijiew2',
      'subtitle': 'this is item1',
      'status': 'false',
    },
    {
      'title': 'Kaijiew3',
      'subtitle': 'this is item1',
      'status': 'false',
    },
  ];

  Widget build(BuildContext context) {
    var bookMarkBloc = Provider.of<BookmarkBloc>(context);

    //FoodModel foodModel = new FoodModel();

    return Scaffold(
      appBar: AppBar(
        title: Text('FavoritePage'),
        actions: [
          Row(
            children: [
              Text(bookMarkBloc.count.toString()),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bookMarkPage(),
                      ));
                },
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    bookMarkBloc.addCount();
                    //print(bookMarkBloc.count);

                    FoodModel foodModel = new FoodModel(
                      title: foodList[index]['title'],
                      subtitle: foodList[index]['subtitle'],
                      status: foodList[index]['status'],
                    );

                    bookMarkBloc.addFood(foodModel);

                    print(bookMarkBloc.items[index].title);
                    print(bookMarkBloc.items.length);

                    setState(() {
                      foodList[index]['status'] = 'true';
                    });
                  },
                  title: Text(foodList[index]['title']),
                  subtitle: Text(foodList[index]['subtitle']),
                  trailing: foodList[index]['status'] == "false"
                      ? Icon(Icons.favorite_border)
                      : Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
