import 'package:flutter/material.dart';

class Customnavi extends StatefulWidget {
  final int currentpageindex;
  final Function(int) onDestinationSelected;

  const Customnavi(
      {super.key,
      required this.currentpageindex,
      required this.onDestinationSelected});

  @override
  State<Customnavi> createState() => _CustomnaviState();
}

class _CustomnaviState extends State<Customnavi> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 70,
      indicatorColor: Colors.purple,
      onDestinationSelected: widget.onDestinationSelected,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      elevation: 20,
      surfaceTintColor: Colors.deepPurpleAccent,
      shadowColor: Colors.blue,
      overlayColor: WidgetStatePropertyAll(Colors.blue),
      selectedIndex: widget.currentpageindex,
      backgroundColor: const Color(0xFF111B21),
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(Icons.home_rounded),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.my_library_books_rounded),
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.my_library_books_outlined),
          ),
          label: 'Your Journal',
        ),
      ],
    );
  }
}
