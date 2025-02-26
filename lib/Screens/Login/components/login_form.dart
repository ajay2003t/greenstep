import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../Survey/survey_page.dart'; // Import SurveyPage

import '../../../constants.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {
              _email = email; // Store the email in a variable
            },
            decoration: const InputDecoration(
              hintText: "Your email",
              hintStyle: TextStyle(fontFamily: 'fredoka_bold', fontSize: 16),
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              onSaved: (password) {
                _password = password; // Store the password in a variable
              },
              decoration: const InputDecoration(
                hintText: "Your password",
                hintStyle: TextStyle(fontFamily: 'fredoka_bold', fontSize: 16),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () async {
              _formKey.currentState?.save(); // Save the form fields

              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: _email!,
                  password: _password!,
                );
                // Show success message and navigate to SurveyPage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SurveyPage()),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Logged in successfully!')),
                );
              } catch (e) {
                // Show error message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text(
                          'Kindly register or check your mail-id and password')),
                );
              }
            },
            child: const Text(
              "Login",
              style: TextStyle(fontFamily: 'fredoka_bold', fontSize: 16),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
