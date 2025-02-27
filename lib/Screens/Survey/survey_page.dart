import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../components/background.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  List<bool> professionCheckboxes = [false, false, false, false];
  List<bool> transportCheckboxes = [false, false, false, false, false];
  List<bool> vehicleTypeSelections = List.filled(4, false);
  List<bool> engineCapacitySelections = List.filled(4, false);
  List<bool> rideSharingSelections = List.filled(3, false);
  List<bool> mobilePhoneSelections = List.filled(4, false);
  List<bool> upgradeFrequencySelections = List.filled(3, false);
  List<bool> foodHabitsSelections = List.filled(3, false);
  List<bool> processedFoodSelections = List.filled(3, false);
  List<bool> wasteDisposalSelections = List.filled(3, false);

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
                    "Who are you?",
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
                        offset: const Offset(0, 3),
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
                        value: professionCheckboxes[0],
                        onChanged: (bool? value) {
                          setState(() {
                            professionCheckboxes[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Employee'),
                        value: professionCheckboxes[1],
                        onChanged: (bool? value) {
                          setState(() {
                            professionCheckboxes[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Business Owner'),
                        value: professionCheckboxes[2],
                        onChanged: (bool? value) {
                          setState(() {
                            professionCheckboxes[2] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Freelancer'),
                        value: professionCheckboxes[3],
                        onChanged: (bool? value) {
                          setState(() {
                            professionCheckboxes[3] = value!;
                          });
                        },
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
                        offset: const Offset(0, 3),
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
                        value: transportCheckboxes[0],
                        onChanged: (bool? value) {
                          setState(() {
                            transportCheckboxes[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Bicycle'),
                        value: transportCheckboxes[1],
                        onChanged: (bool? value) {
                          setState(() {
                            transportCheckboxes[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Walking'),
                        value: transportCheckboxes[2],
                        onChanged: (bool? value) {
                          setState(() {
                            transportCheckboxes[2] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Car'),
                        value: transportCheckboxes[3],
                        onChanged: (bool? value) {
                          setState(() {
                            transportCheckboxes[3] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Motorcycle'),
                        value: transportCheckboxes[4],
                        onChanged: (bool? value) {
                          setState(() {
                            transportCheckboxes[4] = value!;
                          });
                        },
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
                          'If you use a personal vehicle, what type is it?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Petrol/Diesel Car'),
                        value: vehicleTypeSelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            vehicleTypeSelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Electric Vehicle'),
                        value: vehicleTypeSelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            vehicleTypeSelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Bike'),
                        value: vehicleTypeSelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            vehicleTypeSelections[2] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Scooter'),
                        value: vehicleTypeSelections[3],
                        onChanged: (bool? value) {
                          setState(() {
                            vehicleTypeSelections[3] = value!;
                          });
                        },
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
                        value: engineCapacitySelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            engineCapacitySelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('100-200cc'),
                        value: engineCapacitySelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            engineCapacitySelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('200-500cc'),
                        value: engineCapacitySelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            engineCapacitySelections[2] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('500+cc'),
                        value: engineCapacitySelections[3],
                        onChanged: (bool? value) {
                          setState(() {
                            engineCapacitySelections[3] = value!;
                          });
                        },
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
                        title: const Text('Daily'),
                        value: rideSharingSelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            rideSharingSelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Occasionally'),
                        value: rideSharingSelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            rideSharingSelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Never'),
                        value: rideSharingSelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            rideSharingSelections[2] = value!;
                          });
                        },
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
                        title: const Text('Budget'),
                        value: mobilePhoneSelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            mobilePhoneSelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Mid-range'),
                        value: mobilePhoneSelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            mobilePhoneSelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Flagship'),
                        value: mobilePhoneSelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            mobilePhoneSelections[2] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Feature Phone'),
                        value: mobilePhoneSelections[3],
                        onChanged: (bool? value) {
                          setState(() {
                            mobilePhoneSelections[3] = value!;
                          });
                        },
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
                          'How frequently do you upgrade your phone or other electronic devices?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Every year'),
                        value: upgradeFrequencySelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            upgradeFrequencySelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Every 2-3 years'),
                        value: upgradeFrequencySelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            upgradeFrequencySelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Rarely'),
                        value: upgradeFrequencySelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            upgradeFrequencySelections[2] = value!;
                          });
                        },
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
                        title: const Text('Vegetarian'),
                        value: foodHabitsSelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            foodHabitsSelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Vegan'),
                        value: foodHabitsSelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            foodHabitsSelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Non-vegetarian'),
                        value: foodHabitsSelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            foodHabitsSelections[2] = value!;
                          });
                        },
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
                          'How often do you eat processed or packaged foods?',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'fredoka_bold')),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Daily'),
                        value: processedFoodSelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            processedFoodSelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Occasionally'),
                        value: processedFoodSelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            processedFoodSelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Rarely'),
                        value: processedFoodSelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            processedFoodSelections[2] = value!;
                          });
                        },
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
                        title: const Text('Recycling'),
                        value: wasteDisposalSelections[0],
                        onChanged: (bool? value) {
                          setState(() {
                            wasteDisposalSelections[0] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Composting'),
                        value: wasteDisposalSelections[1],
                        onChanged: (bool? value) {
                          setState(() {
                            wasteDisposalSelections[1] = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        title: const Text('Landfill'),
                        value: wasteDisposalSelections[2],
                        onChanged: (bool? value) {
                          setState(() {
                            wasteDisposalSelections[2] = value!;
                          });
                        },
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
