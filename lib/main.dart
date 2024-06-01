import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_app/bloc/counter.bloc.dart';
import 'package:state_management_app/pages/counter.bloc.page.dart';
import 'package:state_management_app/pages/counter.statfull.page.dart';

import 'bloc/counter.cubit.dart';

void main() => runApp(MyApp());

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.deepOrange,
        indicatorColor: Colors.white,
      ),
      routes: {
        "/": (context) => CounterPage(),
      },
      //home: CounterPage(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => CounterCubit(0)),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: Colors.deepOrange,
          indicatorColor: Colors.white,
        ),
        routes: {
          "/": (context) => CounterBlocPage(),
        },
        //home: CounterPage(),
      ),
    );
  }
}
