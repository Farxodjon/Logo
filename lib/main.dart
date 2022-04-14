import 'package:flutter/cupertino.dart';
import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'logo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Qaydnoma'),
        ),
        backgroundColor: Color.fromARGB(237, 226, 191, 14),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: UserTransaction(),
      ),
    );
  }
}
