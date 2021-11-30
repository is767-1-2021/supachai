import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:core';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Transaction',
          style: TextStyle(color: Color(0xFF0E1C00)),
        ),
        backgroundColor: Colors.grey[400],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          //child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),

                SizedBox(
                  height: 50,
                ),

                //Text("Email", style: TextStyle(fontSize: 16)),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  decoration: InputDecoration(
                      fillColor: Colors.white10,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.list_alt_rounded,
                      ),
                      labelText: 'Amount?',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade500),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500))),
                  validator: (value) {},
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white10,
                      filled: true,
                      prefixIcon: Icon(Icons.attach_money_rounded),
                      labelText: 'For What?',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade500),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500))),
                  validator: (value) {},
                ),
                SizedBox(
                  height: 50,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add, size: 25),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
