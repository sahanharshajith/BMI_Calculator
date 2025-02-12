import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String bmivalue;
  final String bmiCategory;

  const ThirdScreen({required this.bmivalue, Key? key, required this.bmiCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pushNamed('/second');
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Result',
              style: const TextStyle(
                color: Color(0xFF00008B),
                fontSize: 50,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your BMI is $bmivalue',
                      style: const TextStyle(fontSize: 40),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Category: $bmiCategory',
                      style: const TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: const Text(
                'Re-Calculate',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}