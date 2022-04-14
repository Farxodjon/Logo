import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      title: 'test',
      date: DateTime.now(),
      color: Colors.yellow,
    ),
    Transaction(
      title: 'today',
      date: DateTime.now(),
      color: Colors.red,
    )
  ];

  void _addNewTransaction(
    String TxTitle,
  ) {
    final newTx = Transaction(
      title: TxTitle,
      date: DateTime.now(),
      color: Colors.yellow,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: TransactionList(_userTransactions),
            flex: 3,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.green,
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.add,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.red,
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add, color: Colors.transparent),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.yellow,
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add, color: Colors.transparent),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.blue,
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add, color: Colors.transparent),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.orange,
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add, color: Colors.transparent),
                      ),
                    ),
                  ],
                ),
                NewTransaction(_addNewTransaction),
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
