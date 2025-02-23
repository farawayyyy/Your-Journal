import 'package:flutter/material.dart';
import 'package:yourjournal/features/sharedlayout.dart';
import 'package:yourjournal/views/homepage.dart';
import 'package:yourjournal/views/yourjournal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Sharedlayout(),
      theme: ThemeData(
          navigationBarTheme: NavigationBarThemeData(
            surfaceTintColor: Colors.blue,
              labelTextStyle: WidgetStatePropertyAll(
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              iconTheme:
                  WidgetStatePropertyAll(IconThemeData(color: Colors.blue))),
          useMaterial3: true,
          focusColor: Colors.blue,
          primaryColor: Colors.blue,
          primarySwatch: Colors.purple,
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: Colors.blue,
            cursorColor: Colors.blue,
            selectionColor: Colors.blue,
          )),
      routes: {
        '/home': (context) => Homepage(),
        'journal': (context) => YourJournal()
      },
    );
  }
}
