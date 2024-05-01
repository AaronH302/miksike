import 'package:flutter/material.dart';
import 'package:matemaatik/multibly_division.dart';
import 'package:matemaatik/addition_subtraction.dart';

final pageList = [const PlusMinus(addition: true,), const PlusMinus(addition: false,), const TimesDivided(multibly: true,), const TimesDivided(multibly: false,) ];
final textList = ['Liitmine', 'Lahutamine', 'Korrutamine', 'Jagamine'];

class Selection extends StatelessWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mida õpime?',
          style: TextStyle(color: Colors.white),
          ),
         backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: GridView.count(
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
                  color: Color.fromARGB(255, 0, 179, 255), //see muudab valiku värve
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
    ));
  }
}

