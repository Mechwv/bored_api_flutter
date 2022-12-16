import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:flutter/material.dart';

import '../../widgets/input_form.dart';
import '../../widgets/response_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
                ResponseCard(ApiResponse(
                    activity: "Learn Express.js",
                    accessibility: 0.25,
                    type: "education",
                    participants: 1,
                    price: 0.1,
                link: "sdfgsdfgsdfg",
                key: "sdfasdfasdf"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
