import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          title: Text('Ninja ID Card.'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/harp1.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text(
                'Name',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10),
              Text(
                'Chun-Li',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                'Current-Ninja -level',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[100],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'chun.li@netninja.com.ug',
                    style: TextStyle(
                        color: Colors.grey[100],
                        letterSpacing: 3.0,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
