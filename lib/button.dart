import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  late VoidCallback method;

  MyButton({
    Key? key,
    required method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => method,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text('OK'),
      ),
    );
  }
}
