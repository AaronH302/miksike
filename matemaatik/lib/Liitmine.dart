import 'package:flutter/material.dart';
import 'package:matemaatik/Lahutamine1-10.dart';
import 'package:matemaatik/Lahutamine1-100.dart';
import 'package:matemaatik/Lahutamine1-1000.dart';
import 'package:matemaatik/Lahutamine1-20.dart';
import 'package:matemaatik/Liitmine1-10.dart';
// import 'package:matemaatik/Liitmine1-100.dart';
// import 'package:matemaatik/Liitmine1-1000.dart';
// import 'package:matemaatik/Liitmine1-20.dart';
// import 'package:matemaatik/Liitmine1-30.dart';
// import 'package:matemaatik/Liitmine1-50.dart';
// import 'package:matemaatik/Liitmine1-500.dart';

const additionOptions = ['1 - 10', '1 - 20',  '1 - 30', '1 - 50', '1 - 100', '1 -500', '1 - 1000'];

//TODO PAGE NAVGATION CORRECTION!!!!!
const additionPages = [PageFive(limit:5), PageFive(limit:10), PageFive(limit:15), PageFive(limit:25)];
const substractionPages = [PageNine(), PageTen(), PageEleven(), PageTwelve()];


class PageOne extends StatelessWidget {
  final bool addition;
  const PageOne({Key? key, required this.addition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: addition ? const Text('Vali raskustase liitmisele') : const Text('Vali raskustase lahutamisele' )),
      body: GridView.count(
        crossAxisCount: 2,
      children: List.generate(additionOptions.length, (index) {
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
                  color: Color.fromARGB(255, 184, 184, 184),
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
      