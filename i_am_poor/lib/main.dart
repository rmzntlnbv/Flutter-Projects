import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 174, 105),
      appBar: AppBar(
        title: Text('I Am Poor'),
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Image(
          image: NetworkImage('https://static.wikia.nocookie.net/lord-of-the-mystery/images/d/d3/Sacred_Emblem_-_Church_of_the_Fool2.png/revision/latest/scale-to-width-down/2480?cb=20230526080215'),
        ),
      ),
    ),
  ));
}

