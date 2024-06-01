import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build...");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('My Counter'),
      ),
      body: Center(
        child: Text(
          "My Counter value => $counter",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              print("Click -");

              setState(() {
                --counter;
              });
            },
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                ++counter;
              });
            },
          )
        ],
      ),
    );
  }
}
