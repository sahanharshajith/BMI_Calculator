import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: Icon(Icons.home_filled),
          onPressed: (){
            Navigator.of(context).pushNamed('/home');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'BMI',
              style: const TextStyle(
                color: Color(0xFF00008B),
                fontSize: 150,
                fontWeight: FontWeight.w900,
                height: 0.7, // Line height to reduce space
              ),
            ),
            Text(
              'Calculator',
              style: const TextStyle(
                color: Color(0xFF00008B),
                fontSize: 55,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: const Text(
                  'START',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue[100],
    );
  }
}
