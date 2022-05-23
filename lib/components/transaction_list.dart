import 'package:flutter/material.dart';
import 'package:study/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList({Key? key, required this.transaction}) : super(key: key);

  late List<Transaction> transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...transaction.map((transaction) {
          return Card(
            child: Row(children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  'R\$ ${transaction.value.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('d MM y').format(transaction.date),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ]),
          );
        }).toList(),
      ],
    );
  }
}
