import 'package:flutter/material.dart';

class myCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFF111B21),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Card(
              shadowColor: Colors.purple,
              color: Colors.white24,
              child: ListTile(
                isThreeLine: true,
                leading: const Text('1'),
                title: const Text(
                  'Morning:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      shadows: [
                        Shadow(color: Colors.blue, offset: Offset(2, 2))
                      ]),
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'Embrace the day with gratitude; every sunrise brings new opportunities.',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 203, 110, 221)),
                    )),
                trailing: const Text(
                  '\u{1F305}',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Card(
              color: Colors.cyan,
              child: ListTile(
                isThreeLine: true,
                leading: const Text('2'),
                title: const Text(
                  'Afternoon:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    shadows: [Shadow(color: Colors.blue, offset: Offset(1, 1))],
                  ),
                ),
                subtitle: Text(
                  'Take a moment to pause; reflection fuels progress.',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
                trailing: const Text(
                  '\u{1F31E}',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: const Card(
              color: Colors.white24,
              shadowColor: Colors.purple,
              child: ListTile(
                isThreeLine: true,
                leading: Text('3'),
                title: Text(
                  'Evening:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      shadows: [
                        Shadow(color: Colors.blue, offset: Offset(2, 2))
                      ]),
                ),
                subtitle: Text(
                  'Celebrate your wins, no matter how small; growth is a journey, not a race.',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 203, 110, 221)),
                ),
                trailing: Text(
                  '\u{1F306}',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Card(
              color: Colors.cyan,
              child: ListTile(
                isThreeLine: true,
                leading: Text('4'),
                title: Text(
                  'Night:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      shadows: [
                        Shadow(color: Colors.blue, offset: Offset(1, 1))
                      ]),
                ),
                subtitle: Text(
                  'Let go of the day’s worries; find peace in rest to rise anew',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
                trailing: Text(
                  '\u{1F319}',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
