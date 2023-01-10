import 'package:flutter/material.dart';

class StateFullExample extends StatefulWidget {
  const StateFullExample({super.key});

  @override
  State<StateFullExample> createState() => _StateFullExampleState();
}

class _StateFullExampleState extends State<StateFullExample> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;

    void onClick() {
      setState(() {
        counter = counter + 1;
      });
    }

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
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
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
