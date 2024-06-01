import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_app/bloc/counter.cubit.dart';

class CounterCubitPage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build...");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('My Counter Cubit'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              "My Counter value => $state",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
          )
        ],
      ),
    );
  }
}
