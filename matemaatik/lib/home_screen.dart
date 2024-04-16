
import 'package:flutter/material.dart';
import 'package:matemaatik/quiz_selection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Matemaatik',
          style: TextStyle(color: Colors.white), // Set app bar text color to white
        ),
        backgroundColor: Colors.grey[900], // Set app bar background color to dark grey
      ),
      backgroundColor: Colors.grey[900], // Set the background color to dark grey
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
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              color: Color.fromARGB(255, 223, 85, 5),
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
