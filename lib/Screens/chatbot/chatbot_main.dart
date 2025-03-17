import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_auth/Screens/chatbot/myHomePage.dart';
//import 'package:flutter_auth/Screens/chatbot/themeNotifier.dart';
//mport 'package:flutter_auth/Screens/chatbot/themes.dart';

class ChatBot extends ConsumerWidget {
  static const routeName = '/chatbot';
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final themeMode = ref.watch(themeProvider);

    return (const MyHomePage());
  }
}
