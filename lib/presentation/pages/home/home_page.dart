import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:bored_api/presentation/pages/home/bloc/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/input_form.dart';
import '../../widgets/response_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<HomeBloc>();
  }


  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    final appTheme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is HomeErrorState) {
          return Center(
              child: Text(
                  state.message,
                  style: appTheme.textTheme.titleLarge?.copyWith(color: appTheme.colorScheme.primary)
              )
          );
        }
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Заполните желаемые поля \n для выбора активности',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    InputForm(),
                    if (state is HomeSuccessState) ...[
                      ResponseCard(state.response)
                    ] else ...[
                      ResponseCard(ApiResponse(
                          activity: "Learn Express.js",
                          accessibility: 0.25,
                          type: "education",
                          participants: 1,
                          price: 0.1,
                          link: "sdfgsdfgsdfg",
                          key: "sdfasdfasdf"))
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
    });
  }


}
