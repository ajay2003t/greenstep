import 'package:flutter/material.dart';
import '../../../constants.dart'; // Ensure to import constants for colors

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard',
            style: TextStyle(fontFamily: 'fredoka_bold')),
        backgroundColor: kPrimaryColor, // Use primary color for the app bar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Dashboard!',
                style: TextStyle(fontSize: 24, fontFamily: 'fredoka_bold'),
              ),
              SizedBox(height: 20),
              Text(
                'Here you can view your survey results and other information.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Logic to navigate back to the survey or other actions
                  Navigator.pop(context);
                },
                child: Text('Back to Survey',
                    style: TextStyle(fontFamily: 'fredoka_bold')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
