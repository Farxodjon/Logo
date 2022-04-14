import 'package:flutter/material.dart';
class Transaction {
   String title = '';
   DateTime date = DateTime.now();
   Color color = Colors.blue;
Transaction({
  required this.title,
  required this.date,
  required this.color,
});
}