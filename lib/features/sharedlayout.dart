import 'package:flutter/material.dart';
import 'package:yourjournal/features/customnavi.dart';
import 'package:yourjournal/views/homepage.dart';
import 'package:yourjournal/views/yourjournal.dart';

class Sharedlayout extends StatefulWidget {
  const Sharedlayout({super.key});

  @override
  State<Sharedlayout> createState() => _SharedlayoutState();
}

int currentpageindex = 0;
List<Widget> pages = const [
  Homepage(),
  YourJournal(),
];

class _SharedlayoutState extends State<Sharedlayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Customnavi(
          currentpageindex: currentpageindex,
          onDestinationSelected: (int index) {
            setState(() {
              currentpageindex = index;
            });
          }),
      body: pages[currentpageindex],
    );
  }
}
