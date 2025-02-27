import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../components/background.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding * 5),
                const Center(
                  child: Text(
                    "who are you ?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'fredoka_bold'),
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),

                // Profession Question
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('What is your profession?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Student'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Employee'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Business Owner'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Freelancer'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),

                // Transport Mode Question
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'What mode of transport do you use to commute to work/school?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Public Transport'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Bicycle'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Walking'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Car'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Motorcycle'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),

                // Personal Vehicle Type Question
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'If you use a personal vehicle, what type is it?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Petrol/Diesel Car'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Electric Vehicle'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Bike'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Scooter'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'What is the engine capacity (cc) of your vehicle?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('<100cc'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text(' 100-200cc'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('200-500cc'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('500+cc'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'How often do you use ride-sharing or public transport?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('daily'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('occasionally'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('never'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('What type of mobile phone do you use?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text(' budget'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('mid-range'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('flagship'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('feature phone'),
                        value: false,
                        onChanged: (bool? value) {},
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'How frequently do you upgrade your phone or other electronic devices? ',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('every year'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('every 2-3 years'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('rarely'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('What are your primary food habits?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('vegetarian'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('vegan'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('non-vegetarian'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'How often do you eat processed or packaged foods? ',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text(' daily'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('occasionally'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('rarely'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('How do you dispose of household waste?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('segregated recycling'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text(' general waste bin'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text(' composting'),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ],
                  ),
                ),

                // Continue with other questions in the same format...

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Submission"),
                          content: const Text("Your answers are saved."),
                          actions: [
                            TextButton(
                              child: const Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.pushReplacementNamed(
                                    context, '/dashboard');
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Submit',
                      style: TextStyle(fontFamily: 'fredoka_bold')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
