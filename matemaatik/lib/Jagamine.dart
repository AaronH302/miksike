import 'package:flutter/material.dart';
import 'package:matemaatik/Jagamine1-10.dart';
import 'package:matemaatik/Jagamine1-5.dart';
import 'package:matemaatik/Jagamine1.dart';
import 'package:matemaatik/Jagamine10.dart';
import 'package:matemaatik/Jagamine2.dart';
import 'package:matemaatik/Jagamine3.dart';
import 'package:matemaatik/Jagamine4.dart';
import 'package:matemaatik/Jagamine5-10.dart';
import 'package:matemaatik/Jagamine5.dart';
import 'package:matemaatik/Jagamine6.dart';
import 'package:matemaatik/Jagamine7.dart';
import 'package:matemaatik/Jagamine8.dart';
import 'package:matemaatik/Jagamine9.dart';
class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vali raskustase jagamisele')),
      body: ListView(
        children: [
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwentysix()),    
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
              MaterialPageRoute(builder: (context) => const PageTwentyseven()),    
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
              MaterialPageRoute(builder: (context) => const PageTwentyeight()),    
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
              MaterialPageRoute(builder: (context) => const PageTwentynine()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdy()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdyone()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdytwo()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdythree()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdyfour()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdyfive()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdysix()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdyseven()),    
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
              MaterialPageRoute(builder: (context) => const PageThirdyeight()),    
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
