import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_app/bloc/counter.bloc.dart';
import 'package:state_management_app/bloc/counter.cubit.dart';

class CounterBlocPage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build - bloc essaie ...");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('My Counter Cubit',
            style: TextStyle(
              color: Theme.of(context).indicatorColor,
            )),
      ),
      body: BlocBuilder<CounterBloc, int>(
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
              context.read<CounterBloc>().add(CountEvent.DECREMENT);
            },
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<CounterBloc>().add(CountEvent.INCREMENT);
            },
          )
        ],
      ),
    );
  }
}
