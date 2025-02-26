import 'package:flutter/material.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Survey Page'),
      ),
      body: Center(
        child: Text('Welcome to the Survey Page!'),
      ),
    );
  }
}
