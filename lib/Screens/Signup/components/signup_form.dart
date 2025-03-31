import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (name) {
                _name = name; // Store the email in a variable
              },
              decoration: const InputDecoration(
                hintText: "Your name",
                hintStyle: TextStyle(fontFamily: 'fredoka_bold', fontSize: 16),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
          ),
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
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () async {
              _formKey.currentState?.save(); // Save the form fields

              try {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: _email!,
                  password: _password!,
                );
                final User? user = FirebaseAuth.instance.currentUser;
                final _uid = user!.uid;
                user.updateDisplayName(_name!);
                user.reload();
                await FirebaseFirestore.instance
                    .collection('users')
                    .doc(_uid)
                    .set({
                  'userId': _uid,
                  'name': _name!,
                  'email': _email!,
                  'createdAt': Timestamp.now(),
                });

                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Registered successfully!')),
                );
              } catch (e) {
                // Show error message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Registration failed: $e')),
                );
              }
            },
            child: const Text("Sign Up",
                style: TextStyle(fontFamily: 'fredoka_bold', fontSize: 16)),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
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
