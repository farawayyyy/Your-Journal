import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _MyHomepage();
}

TextEditingController _name = TextEditingController();
String namee = '';

class _MyHomepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.purple[100],
        elevation: 30,
        shadowColor: Colors.blue,
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'images/eren.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text('Faraway'),
                    subtitle: Text('Aboody@gmail.com'),
                  )),
                ],
              ),
              ListTile(
                title: Text('Your Journal'),
                leading: Icon(Icons.menu_book_rounded),
                onTap: () {
                  Navigator.of(context).pushNamed('journal');
                },
              ),
              ListTile(
                  title: Text('Wisdoms'),
                  leading: Icon(Icons.library_books_outlined),
                  onTap: () {}),
              ListTile(
                  title: Text('News'),
                  leading: Icon(Icons.newspaper_rounded),
                  onTap: () {}),
              ListTile(
                  title: Text('About us'),
                  leading: Icon(Icons.help_outline),
                  onTap: () {}),
              ListTile(
                  title: Text('Call us'),
                  leading: Icon(Icons.phone_android_rounded),
                  onTap: () {}),
              ListTile(
                  title: Text('Sign Out'),
                  leading: Icon(Icons.exit_to_app_rounded),
                  onTap: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed('journal');
              },
              icon: const Icon(Icons.library_books_outlined))
        ],
        title: const Text('Homepage',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                shadows: [
                  Shadow(
                      color: Colors.blue, blurRadius: 20, offset: Offset(6, 3)),
                  Shadow(
                      color: Colors.purple,
                      blurRadius: 20,
                      offset: Offset(-3, -3)),
                ])),
        backgroundColor: const Color.fromARGB(248, 39, 33, 63),
        elevation: 30,
        shadowColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        color: const Color(0xFF111B21),
        child: Center(
          child: ListView(
            children: [
              Form(
                child: Container(
                  width: 50,
                  margin: const EdgeInsets.only(top: 100),
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: -65,
                        offset: Offset(10, 10),
                        blurRadius: 20),
                    BoxShadow(
                        spreadRadius: -65,
                        color: Colors.purple,
                        offset: Offset(-7, -7),
                        blurRadius: 25)
                  ]),
                  child: TextFormField(
                    autofocus: false,
                    focusNode: FocusNode(),
                    controller: _name,
                    decoration: const InputDecoration(
                        labelText: 'Type your name',
                        labelStyle: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 3))),
                    style: const TextStyle(color: Colors.blue),
                    maxLines: 1,
                    minLines: 1,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: MaterialButton(
                  textColor: Colors.blue,
                  color: Colors.deepPurple,
                  onPressed: () {
                    setState(() {
                      namee = _name.text;
                    });
                  },
                  splashColor: Colors.pink,
                  child: const Text('Submit'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 150),
                child: MaterialButton(
                    splashColor: Colors.blueAccent,
                    color: Colors.purple,
                    textColor: Colors.blue,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              scrollable: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                              title: Text(
                                'Notice!',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: Text(
                                'Are you sure you want to leave?',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed('journal');
                                    },
                                    child: Text(
                                      'Okay',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            );
                          });
                    },
                    child: const Text(
                      'Open your journal',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
              ),
              //namee.isNotEmpty ? Text('Saved name:$namee') : Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
