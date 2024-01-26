import 'package:flutter/material.dart';
import 'package:matemaatik/Lahutamine1-10.dart';
import 'package:matemaatik/Lahutamine1-100.dart';
import 'package:matemaatik/Lahutamine1-1000.dart';
import 'package:matemaatik/Lahutamine1-20.dart';
import 'package:matemaatik/Lahutamine1-30.dart';
import 'package:matemaatik/Lahutamine1-50.dart';
import 'package:matemaatik/Lahutamine1-500.dart';
class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vali raskustase lahutamisele')),
      body: ListView(
        children: [
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageNine()),    
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
                              ..color = Colors.black,
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
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTen()),    
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
                          '1 - 20',
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
                          '1 - 20',
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
              MaterialPageRoute(builder: (context) => const PageThirdynine()),    
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
                          '1 - 30',
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
                          '1 - 30',
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
              MaterialPageRoute(builder: (context) => const PageFourthy()),    
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
                          '1 - 50',
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
                          '1 - 50',
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
              MaterialPageRoute(builder: (context) => const PageEleven()),    
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
                          '1 - 100',
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
                          '1 - 100',
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
              MaterialPageRoute(builder: (context) => const PageFourthyone()),    
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
                          '1 - 500',
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
                          '1 - 500',
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
              MaterialPageRoute(builder: (context) => const PageTwelve()),    
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
                          '1 - 1000',
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
                          '1 - 1000',
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



