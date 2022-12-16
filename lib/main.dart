import 'package:bored_api/injector.dart';
import 'package:bored_api/presentation/pages/home/bloc/home/home_bloc.dart';
import 'package:bored_api/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => injector()..add(const GetActivityEvent()),
      child: MaterialApp(
        title: 'Flutter Cringe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(title: 'Flutter Autistic App')
        },
      ),
    );
  }
}
