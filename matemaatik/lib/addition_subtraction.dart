import 'package:flutter/material.dart';
import 'package:matemaatik/substraction.dart';
import 'package:matemaatik/addition.dart';

const additionOptions = ['1...10', '1...20',  '1...30', '1...50', '1...100', '1...500', '1...1000'];

//TODO PAGE NAVGATION CORRECTION!!!!!
const additionPages = [Addition(limit:5), Addition(limit:10), Addition(limit:15), Addition(limit:25), Addition(limit:50), Addition(limit:250), Addition(limit:500)];
const substractionPages = [Subtraction(limit:5), Subtraction(limit:10), Subtraction(limit:15), Subtraction(limit:25), Subtraction(limit:50), Subtraction(limit:250), Subtraction(limit:500)];


class PlusMinus extends StatelessWidget {
  final bool addition;
  const PlusMinus({Key? key, required this.addition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust the width of each grid item based on screen width
    final itemWidth = screenWidth / 2 - 20; // 20 is the total horizontal padding (10 padding on each side)

    return Scaffold(
      appBar: AppBar(
        title: addition
            ? const Text(
                'Mis piires liidame?',
                style: TextStyle(color: Colors.white),
              )
            : const Text(
                'Mis piires lahutame?',
                style: TextStyle(color: Colors.white),
              ),
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: itemWidth / 175, // Aspect ratio based on item width
        children: List.generate(
          additionOptions.length,
          (index) {
        return Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              //TODO KONTROLLI ÕIGET SUUNAMIST
              MaterialPageRoute(builder: (context) => addition ?  additionPages.elementAt(index): substractionPages.elementAt(index)),    
               );      // Navigate to another route
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 41, 187, 16), //255,33,150,243 see muudab raskustaseme värvi
                  child: Center(
                    child: Stack(
                      children: [
                        // Stroked text as border
                        Text(
                        additionOptions.elementAt(index),
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
                          additionOptions.elementAt(index),
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
      
  }}
      