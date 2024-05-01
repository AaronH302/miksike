import 'package:flutter/material.dart';
import 'package:matemaatik/division.dart';
import 'package:matemaatik/multibly.dart';
const multiblyOptions = ['1', '2',  '3', '4', '5', '6', '7', '8', '9', '10'];

//TODO PAGE NAVGATION CORRECTION!!!!!
const multiblyPages = [Multibly(limit:1), Multibly(limit:2), Multibly(limit:3), Multibly(limit:4), Multibly(limit:5), Multibly(limit:6), Multibly(limit:7), Multibly(limit:8), Multibly(limit:9), Multibly(limit:10)];
const divisionPages = [Division(limit:1), Division(limit:2), Division(limit:3), Division(limit:4), Division(limit:5), Division(limit:6), Division(limit:7), Division(limit:8), Division(limit:9), Division(limit:10)];


class TimesDivided extends StatelessWidget {
  final bool multibly;
  const TimesDivided({Key? key, required this.multibly}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust the width of each grid item based on screen width
    final itemWidth = screenWidth / 2 - 20; // 20 is the total horizontal padding (10 padding on each side)

    return Scaffold(
      appBar: AppBar(
        title: multibly
            ? const Text(
                'Vali raskustase korrutamisele',
                style: TextStyle(color: Colors.white),
              )
            : const Text(
                'Vali raskustase jagamisele',
                style: TextStyle(color: Colors.white),
              ),
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: itemWidth / 145, // Aspect ratio based on item width
        children: List.generate(
          multiblyOptions.length,
          (index) {
        return Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => multibly ?  multiblyPages.elementAt(index): divisionPages.elementAt(index)),        
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 41, 187, 16),
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                          multiblyOptions.elementAt(index),
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
                          multiblyOptions.elementAt(index),
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            )
        );
        }))
      );
      
  }
  }