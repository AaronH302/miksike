import 'package:flutter/material.dart';
import 'dart:math';
import 'package:matemaatik/Liitmine.dart';
import 'package:matemaatik/main.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageTen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageTen extends StatefulWidget {
  const PageTen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<PageTen> {
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
    int num1 = Random().nextInt(10);
    int num2 = Random().nextInt(10);

    // Ensure num1 is greater than or equal to num2
    if (num1 < num2) {
      int temp = num1;
      num1 = num2;
      num2 = temp;
    }

    int answer = num1 - num2;

    List<Map<String, Object>> options = [
      {'text': (answer - 1).toString(), 'score': 0},
      {'text': (answer + 1).toString(), 'score': 0},
      {'text': answer.toString(), 'score': 10},
      {'text': (answer + 2).toString(), 'score': 0},
    ];

    options.shuffle();

    Map<String, Object> question = {
      'questionText': 'Mis on $num1 - $num2?',
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
            : Result(_totalScore, _resetQuiz),
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
      margin: const EdgeInsets.all(10),
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
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white)),
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
        child: Text(answerText),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 90) {
      resultText = 'Väga hea tulemus, jätka samas vaimus!';
      print(resultScore);
    } else if (resultScore >= 75) {
      resultText = 'Päris hästi!';
      print(resultScore);
    } else if (resultScore >= 50) {
      resultText = 'Pead ikka pingutama veel!';
    } else if (resultScore >= 30) {
      resultText = 'Kas sa ikka õppisid?';
    } else {
      resultText = 'See pole võimalik!';
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
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTen()),
            ),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Proovi uuesti',
                style: TextStyle(color: Color.fromARGB(255, 1, 1, 1)),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageOne(addition: true,)),
            ),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Vali uus raskustase',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            ),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Vali uus tehe',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            ),
            child: Container(
              color: const Color.fromARGB(255, 113, 113, 113),
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Välju mängust',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
