import 'package:flutter/material.dart';
import 'package:study/components/transaction_user.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ExpensiveApp(),
    ),
  );
}

class ExpensiveApp extends StatelessWidget {
  const ExpensiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expensive'),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 5,
            color: Colors.amber,
            child: Text('Graph'),
          ),
        ),
        TransactionUser(),
      ],
    );
  }
}
