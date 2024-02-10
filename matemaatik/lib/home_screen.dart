import 'package:flutter/material.dart';
import 'package:matemaatik/quiz_selection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matemaatik')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Selection()),
            );
          },
          child: SizedBox(
            height: 80,
            child: Card(
              elevation: 10,
              color: Color.fromARGB(255, 184, 184, 184),
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