import 'package:flutter/material.dart';
import 'package:matemaatik/home_screen.dart';
import 'package:matemaatik/multibly_division.dart';
import 'dart:math';
import 'dart:async';
import 'package:matemaatik/quiz_selection.dart';

class Multibly extends StatefulWidget {
  final int limit;
  const Multibly({Key? key, required this.limit}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Multibly> {
  List<Map<String, Object>> _questions = [];
  var _questionIndex = 0;
  var _totalScore = 0;
  var _wrongAnswers = 0;
  var _isAnswered = false;
  late Timer _timer;
  List<IconData?> _progressIcons = List<IconData?>.filled(10, null);

  @override
  void initState() {
    super.initState();
    _resetQuiz();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _wrongAnswers = 0;
      _isAnswered = false;
      _questions = _generateQuestions();
      _questions = _shuffleQuestions(_questions);
      _progressIcons = List<IconData?>.filled(10, null);
    });
  }

  List<Map<String, Object>> _generateQuestions() {
    List<Map<String, Object>> questions = [];

    for (int i = 1; i <= 10; i++) {
      int num1 = widget.limit; // Add 1 to ensure non-zero values
      int num2 = Random().nextInt(10); // Add 1 to ensure non-zero values

      int answer = num1 * num2;

      List<Map<String, Object>> options = [
        {'text': (answer - 1).toString(), 'score': 0},
        {'text': (answer + 1).toString(), 'score': 0},
        {'text': answer.toString(), 'score': 10},
        {'text': (answer + 2).toString(), 'score': 0},
      ];

      options.shuffle();

      Map<String, Object> question = {
        'questionText': 'Kui palju on $num1 x $num2?',
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
    _progressIcons[_questionIndex] = score > 0 ? Icons.check : Icons.close;
    _totalScore += score;
    if (score == 0) {
      _wrongAnswers++;
    }
    setState(() {
      _isAnswered = true;
    });
    _timer = Timer(const Duration(seconds: 2), () {
      setState(() {
        _isAnswered = false;
        _questionIndex++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matemaatik', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.grey[900], // Change background color to dark grey
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _progressIcons
                  .map(
                    (iconData) => Container(
                      width: MediaQuery.of(context).size.width / 15,
                      height: 10,
                      child: Icon(
                        iconData,
                        color: iconData == Icons.check ? Colors.green : Colors.red,
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20), // Spacer
            _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                    isAnswered: _isAnswered,
                  )
                : Result(
                    _totalScore,
                    _wrongAnswers,
                    _resetQuiz,
                    widget.limit,
                  ),
          ],
        ),
      ),
    ));
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final bool isAnswered;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
    required this.isAnswered,
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
            answer['score'] as int,
            isAnswered: isAnswered,
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
        style: const TextStyle(fontSize: 28, color: Colors.white), // White color
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Answer extends StatefulWidget {
  final Function selectHandler;
  final String answerText;
  final int score;
  final bool isAnswered;

  const Answer(
    this.selectHandler,
    this.answerText,
    this.score, {
    Key? key,
    required this.isAnswered,
  }) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  Color buttonColor = Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    if (widget.isAnswered) {
      buttonColor = widget.score > 0 ? Colors.green : Colors.red;
      _resetColorAfterDelay();
    } else {
      buttonColor = Color.fromARGB(255, 255, 255, 255);
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            widget.selectHandler();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            foregroundColor: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30), // Adjust padding here
          ),
          child: Text(
            widget.answerText,
            style: TextStyle(fontSize: 18), // Adjust text size here
          ),
        ),
      ),
    );
  }


  void _resetColorAfterDelay() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        buttonColor = const Color.fromARGB(255, 184, 184, 184);
      });
    });
  }
}

class Result extends StatelessWidget {
  final int resultScore;
  final int wrongAnswers;
  final Function resetHandler;
  final int currentLimit;

  const Result(
    this.resultScore,
    this.wrongAnswers,
    this.resetHandler,
    this.currentLimit, {
    Key? key,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 100) {
      resultText = 'Perfektne tulemus!';
    } else if (resultScore >= 90) {
      resultText = 'Väga hea tulemus!';
    } else if (resultScore >= 75) {
      resultText = 'Päris hästi!';
    } else if (resultScore >= 50) {
      resultText = 'Proovi veel!';
    } else {
      resultText = 'Kas sa ikka õppisid?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              resultPhrase,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Sinu tulemus ' '$resultScore%',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Multibly(limit: currentLimit)), // Pass the limit here
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 72, 255, 0),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30), // Adjust padding here
              ),
              child: const Text('Proovi uuesti',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TimesDivided(multibly: true,)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 184, 184, 184),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30), // Adjust padding here
              ),
              child: const Text('Vali uus raskustase',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Selection()),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 184, 184, 184),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30), // Adjust padding here
              ),
              child: const Text('Vali uus tehe',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30), // Adjust padding here
              ),
              child: const Text('Välju mängust',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),
        ],
      ),
    );
  }
}
