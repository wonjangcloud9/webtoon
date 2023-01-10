import 'package:flutter/material.dart';

class StateFullExample extends StatefulWidget {
  const StateFullExample({super.key});

  @override
  State<StateFullExample> createState() => _StateFullExampleState();
}

class _StateFullExampleState extends State<StateFullExample> {
  int counter = 0;
  List<int> numbers = [];

  void onClick() {
    setState(() {
      counter = counter + 1;
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'You have pushed the button this many times:',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          for (var number in numbers)
            Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          IconButton(
            onPressed: onClick,
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
