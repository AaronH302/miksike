import 'package:flutter/material.dart';
import 'package:matemaatik/Korrutamine1-10.dart';
import 'package:matemaatik/Korrutamine1-5.dart';
import 'package:matemaatik/Korrutamine1.dart';
import 'package:matemaatik/Korrutamine10.dart';
import 'package:matemaatik/Korrutamine2.dart';
import 'package:matemaatik/Korrutamine3.dart';
import 'package:matemaatik/Korrutamine5-10.dart';
import 'package:matemaatik/Korrutamine5.dart';
import 'package:matemaatik/Korrutamine6.dart';
import 'package:matemaatik/Korrutamine7.dart';
import 'package:matemaatik/Korrutamine8.dart';
import 'package:matemaatik/Korrutamine9.dart';
import 'package:matemaatik/korrutamine4.dart';
class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vali raskustase korrutamisele')),
      body: ListView(
        children: [
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageThirdteen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageFourteen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '2',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageFifthteen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '3',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageSixteen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '4',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageSeventeen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageEightteen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '6',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '6',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageNineteen()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '7',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwenty()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '8',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwentyone()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '9',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '9',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwentytwo()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '10',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwentythree()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '1 - 5',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '1 - 5',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwentyfour()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184), 
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '5 - 10',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '5 - 10',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwnetyfive()),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 184, 184, 184),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          '1 - 10',
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        // Inner text with different color
                        const Text(
                          '1 - 10',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
