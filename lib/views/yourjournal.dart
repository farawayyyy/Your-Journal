import 'package:flutter/material.dart';
import 'package:yourjournal/views/homepage.dart';
import 'package:yourjournal/widgets/cards.dart';

class YourJournal extends StatefulWidget {
  const YourJournal({super.key});
  @override
  State<YourJournal> createState() => _YourJournalState();
}

String save = '';
String notename = '';
TextEditingController savenote = TextEditingController();
TextEditingController _save = TextEditingController();
GlobalKey<FormState> formy = GlobalKey();
bool _isSwitchOn = false;
String? onsave;

class _YourJournalState extends State<YourJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Your daily journal missed you!',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(248, 39, 33, 63)),
        body: Container(
            color: const Color(0xFF111B21),
            child: ListView(children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 80, 143, 168),
                          border: Border.all(color: Colors.purple, width: 4)),
                      child: Text(
                        ' Welcome back, $namee',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueAccent,
                            shadows: [
                              Shadow(
                                  color: Colors.purple,
                                  blurRadius: 10,
                                  offset: Offset(3, 3))
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 500,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 169, 205, 247),
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: const Text(
                        '"Your journal is a reflection of your inner landscape—a place where the mind can roam freely, where thoughts and emotions are given the space to be fully expressed without limitation. Writing is not about finding perfect answers, but about embracing the questions and allowing the answers to reveal themselves over time. With every page you fill, you are not just chronicling events; you are discovering new perspectives, healing old wounds, and shaping the path ahead. This is your sacred space for growth, transformation, and understanding. As you write, remember: the act of reflecting is itself a journey, and with each word, you are moving closer to becoming the person you are meant to be."',
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      width: 400,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 169, 205, 247),
                          border: Border.all(color: Colors.purple, width: 2)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: [
                            Text(
                              'Friday, Jan 10th',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1:30 AM',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.alarm,
                                  color: Colors.purple,
                                ),
                              ])
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 400,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 169, 205, 247),
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.book,
                                color: Colors.purple,
                              ),
                              const Text(
                                'Study:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 15,
                              ),
                              const Text(
                                '3 ~ 5h',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.timer,
                                color: Colors.purple,
                              ),
                              const Text(
                                'COOK/Clean:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 15,
                              ),
                              const Text(
                                '3 ~ 4 h',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.restaurant,
                                color: Colors.purple,
                              ),
                              const Text(
                                'FEEDS:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 15,
                              ),
                              const Text(
                                '2',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.games_outlined,
                                color: Colors.purple,
                              ),
                              const Text(
                                'Gaming:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 15,
                              ),
                              const Text(
                                'Rarely :/',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.purple,
                      thickness: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        'How was your mood today?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueAccent,
                            shadows: [
                              Shadow(
                                  color: Colors.purple,
                                  blurRadius: 10,
                                  offset: Offset(3, 3))
                            ]),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(15),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\u{1F914}', style: TextStyle(fontSize: 30)),
                          Text('\u{1F4AD}', style: TextStyle(fontSize: 30)),
                        ],
                      ),
                    ),

                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 450.0,
                          maxWidth: 500.0,
                        ),
                        child: myCards(),
                      ),
                    ),

                    const SizedBox(
                      child: Divider(
                        endIndent: 20,
                        indent: 20,
                        thickness: 2,
                        color: Colors.purple,
                        height: 2,
                      ),
                    ),
                    SizedBox(
                      width: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: (BorderRadius.circular(20)),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.purple,
                                      blurRadius: 20,
                                      offset: Offset(5, 5))
                                ]),
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Type down your notes below!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_downward,
                            size: 40,
                            color: Colors.purple,
                            shadows: [
                              BoxShadow(
                                  color: Colors.blue,
                                  offset: Offset(3, 3),
                                  blurRadius: 15)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        child: SwitchListTile(
                            activeColor: Colors.blue,
                            title: const Text(
                              'Tap to enable your mini Notepad.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.5,
                                  color: Colors.blueAccent,
                                  shadows: [
                                    Shadow(
                                        color: Colors.purple,
                                        blurRadius: 10,
                                        offset: Offset(3, 3))
                                  ]),
                            ),
                            value: _isSwitchOn,
                            onChanged: (bool value) {
                              setState(() {
                                _isSwitchOn = value;
                              });
                            })),
                    SizedBox(
                      height: 400,
                      child: _isSwitchOn
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(15)),
                              margin: const EdgeInsets.all(12),
                              width: 400,
                              height: 400,
                              child: TextField(
                                controller: _save,
                                onChanged: (value) {
                                  setState(() {
                                    onsave = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 2)),
                                    label: Icon(Icons.menu_book_rounded,
                                        color: Colors.purple),
                                    hintText:
                                        'What is on your mind now, buddy? \u{1F440}',
                                    hintStyle: TextStyle(
                                        color: Colors.purple,
                                        shadows: [
                                          BoxShadow(
                                              spreadRadius: 20,
                                              color: Colors.blue,
                                              blurRadius: 10,
                                              offset: Offset(3, 3))
                                        ],
                                        fontSize: 18)),
                                enableSuggestions: true,
                                autocorrect: true,
                                maxLines: null,
                                cursorColor: Colors.blue,
                                maxLength: 10000,
                                minLines: 1,
                              ),
                            )
                          : null,
                    ),
                    Container(
                      child: _isSwitchOn
                          ? Column(
                              children: [
                                SizedBox(
                                  child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: MaterialButton(
                                          splashColor: Colors.pink,
                                          color: Colors.purple,
                                          textColor: Colors.blue,
                                          onPressed: () {
                                            setState(() {
                                              save = _save.text;
                                            });
                                          },
                                          child: const Text('Save',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.bold)))),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    width: 400,
                                    child: Text(save)),
                              ],
                            )
                          : null,
                    ),
                    SizedBox(
                      child: _isSwitchOn
                          ? Container(
                              margin: const EdgeInsets.only(top: 50),
                              padding: const EdgeInsets.all(20),
                              //height: 100,
                              child: Form(
                                  key: formy,
                                  child: TextFormField(
                                    style: const TextStyle(color: Colors.blue),
                                    controller: savenote,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return ('You must type something!');
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        hintText: 'Name your note',
                                        hintStyle:
                                            TextStyle(color: Colors.purple)),
                                  )),
                            )
                          : null,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: _isSwitchOn
                          ? Card(
                              color: Colors.blue,
                              child: ListTile(
                                leading: const Text('1'),
                                title: Text(notename),
                              ),
                            )
                          : null,
                    ),
                    Container(
                      child: _isSwitchOn
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: MaterialButton(
                                color: Colors.purple,
                                splashColor: Colors.pink,
                                textColor: Colors.blue,
                                hoverColor: Colors.blue,
                                onPressed: () {
                                  if (formy.currentState!.validate()) {
                                  } else {}
                                  setState(() {
                                    notename = savenote.text;
                                  });
                                },
                                child: const Text(
                                  'Save Note Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            )
                          : null,
                    ),
                    Container(
                      height: 100,
                    )
                  ],
                ),
              ),
            ])));
  }
}
