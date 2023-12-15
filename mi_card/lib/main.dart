import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('Images/ava.jpeg'),
              ),
              const Text(
                'Ramazan Tolonbaev',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 3.5,
                    fontWeight: FontWeight.bold),
              ),
               SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card( 
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: const Text(
                    '+1 3129122092',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(      //A single fixed-height row that typically contains some text as well as a leading or trailing icon. We don't have to make rows etc
                leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: const Text(
                    'tolonbaev.ramazan@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(      
                leading: SizedBox(
                    height: 28.0,
                    width: 28.0,
                    child: Image(image: AssetImage('Images/github-logo.png')),
                  ),
                  title: Text(
                    'rmzntlnbv',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
