import 'package:flutter/material.dart';
import 'package:matemaatik/home_screen.dart';
import 'package:matemaatik/multibly_division.dart';
import 'dart:math';
import 'package:matemaatik/quiz_selection.dart';
class Division extends StatefulWidget {
  final int limit;
  const Division({Key? key, required this.limit}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Division> {
  List<Map<String, Object>> _questions = [];
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  void initState() {
    super.initState();
    _resetQuiz();
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _questions = _generateQuestions();
      _questions = _shuffleQuestions(_questions);
    });
  }

List<Map<String, Object>> _generateQuestions() {
  List<Map<String, Object>> questions = [];

  for (int i = 1; i <= 10; i++) {
    int divisor = widget.limit; // Add 1 to ensure non-zero values
    int answer = Random().nextInt(10) + 1; // Add 1 to ensure non-zero values
    int dividend = divisor * answer;

    List<Map<String, Object>> options = [
      {'text': (answer - 1).toString(), 'score': 0},
      {'text': (answer + 1).toString(), 'score': 0},
      {'text': answer.toString(), 'score': 10},
      {'text': (answer + 2).toString(), 'score': 0},
    ];

    options.shuffle();

    Map<String, Object> question = {
      'questionText': 'Mis on $dividend ÷ $divisor?',
      'answers': options,
    };


      questions.add(question);
    }
    return questions;
  }

  List<Map<String, Object>> _shuffleQuestions(List<Map<String, Object>> list) {
    var random = Random();
    for (var i = list.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);
      var temp = list[i];
      list[i] = list[n];
      list[n] = temp;
    }
    return list;
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matemaatik'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz, widget.limit),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'].toString()),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => selectHandler(),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 184, 184, 184),
            foregroundColor: Colors.black
          ),
          child: Text(answerText),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final int currentLimit;

  const Result(this.resultScore, this.resetHandler, this.currentLimit, {Key? key}) : super(key: key);

String get resultPhrase {
    String resultText;
    if (resultScore >= 100) {
      resultText = 'Perfektne tulemus!';
      print(resultScore);
    } else if (resultScore >= 90) {
      resultText = 'Väga hea tulemus!';
      print(resultScore);
    } else if (resultScore >= 75) {
      resultText = 'Päris hästi!';
    } else if (resultScore >= 50) {
      resultText = 'Proovi veel!';
    } else {
      resultText = 'Kas sa ikka õppisid?';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Sinu tulemus ' '$resultScore%',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

                    Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Division(limit: currentLimit)), // Pass the limit here
              ),
              style: (ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 72, 255, 0),)),
              child: const Text('Proovi uuesti',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TimesDivided(multibly: false,)),
              ),
              style: (ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 184, 184, 184),)),
              child: const Text('Vali uus raskustase',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Selection()),
              ),style: (ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 184, 184, 184),)),
              child: const Text('Vali uus tehe',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              ),
              style: (ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 0, 0),)),
              child: const Text('Välju mängust',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                ),
          ),
            ]
            )
          );
  }
}
//           TextButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Division(limit: currentLimit)),
//             ),
//             child: Container(
//                 color: Color.fromARGB(255, 72, 255, 0),
//               padding: const EdgeInsets.all(14),
//               child: const Text(
//                 'Proovi uuesti',
//                 style: TextStyle(color: Color.fromARGB(255, 1, 1, 1)),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const TimesDivided(multibly: false,)),
//             ),
//             child: Container(
//               color: Color.fromARGB(255, 184, 184, 184),
//               padding: const EdgeInsets.all(14),
//               child: const Text(
//                 'Vali uus raskustase',
//                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const Selection()),
//             ),
//             child: Container(
//               color: const Color.fromARGB(255, 184, 184, 184),
//               padding: const EdgeInsets.all(14),
//               child: const Text(
//                 'Vali uus tehe',
//                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const HomeScreen()),
//             ),
//             child: Container(
//               color: Color.fromARGB(255, 255, 0, 0),
//               padding: const EdgeInsets.all(14),
//               child: const Text(
//                 'Välju mängust',
//                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

