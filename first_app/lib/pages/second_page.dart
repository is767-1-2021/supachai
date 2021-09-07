import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.build_sharp),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi Hi',
            ),
            Table(
              children: [
                TableRow(children: [
                  Container(
                    child: Center(child: Text('No.')),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('Name.')),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('Gender')),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ]),
                TableRow(children: [Text('1'), Text('Supachai'), Text('Male')]),
                TableRow(children: [Text('2'), Text('Supachai2'), Text('Male')])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
