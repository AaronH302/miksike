import 'package:flutter/material.dart';
import 'package:matemaatik/Jagamine.dart';
import 'package:matemaatik/Korrutamine.dart';
// import 'package:matemaatik/Lahutamine.dart';
import 'package:matemaatik/Liitmine.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Matemaatik',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matemaatik')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
          child: SizedBox(
            height: 80,
            child: Card(
              elevation: 10,
              color: Color.fromARGB(255, 122, 86, 86),
              child: Center(
                child: Stack(
                  children: [
                    // Stroked text as border
                    Text(
                      'Mängima!',
                      style: TextStyle(
                        fontSize: 25,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.black,
                      ),
                    ),
                    // Inner text with different color
                    const Text(
                      'Mängima!',
                      style: TextStyle(
                        fontSize: 25,
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
    );
  }
}

final pageList = [PageOne(addition: true,), PageOne(addition: false,), PageThree(), PageFour() ];
final textList = ['Liitmine', 'Lahutamine', 'Korrutamine', 'Jagamine'];

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(pageList.length, (index) {
        return  Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  pageList.elementAt(index)),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 150,
                child: Card(
                  elevation: 10,
                  color: const Color.fromARGB(255, 184, 184, 184),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          textList.elementAt(index),
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Inner text with different color
                        Text(
                          textList.elementAt(index),
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
      }),
    );
  }
}

