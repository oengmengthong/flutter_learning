import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(TypingSpeedApp());

class TypingSpeedApp extends StatefulWidget {
  @override
  _TypingSpeedAppState createState() => _TypingSpeedAppState();
}

class _TypingSpeedAppState extends State<TypingSpeedApp> {
  String userInput = '';
  List<String> testTexts = [
    'The quick brown fox jumps over the lazy dog.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness.',
    'In the beginning God created the heavens and the earth.',
    'To be or not to be, that is the question.',
    'I have a dream that one day this nation will rise up and live out the true meaning of its creed: We hold these truths to be self-evident, that all men are created equal.',
    'Ask not what your country can do for you, ask what you can do for your country.',
    'Life is like a box of chocolates, you never know what you\'re gonna get.',
    'Houston, we have a problem.',
    'May the Force be with you.'
  ];
  String currentTestText = '';
  int elapsedTime = 0;
  int errorCount = 0;
  int characterCount = 0;
  Timer timer;
  bool isTimerRunning = false;

  @override
  void initState() {
    super.initState();
    setNewTestText();
  }

  void setNewTestText() {
    setState(() {
      currentTestText = testTexts[DateTime.now().microsecondsSinceEpoch % testTexts.length];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typing Speed App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Typing Speed App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentTestText),
              TextField(
                onChanged: (value) {
                  if (value.length > characterCount) {
                    // User typed a new character
                    characterCount++;
                    if (value[value.length - 1] !=
                        currentTestText[userInput.length]) {
                      // User made an error
                      errorCount++;
                    }
                  } else {
                    // User deleted a character
                    characterCount--;
                  }
                  setState(() {
                    userInput = value;
                  });
                },
              ),
              SizedBox(height: 20),
              TextButton(
                child: Text(isTimerRunning ? 'Stop' : 'Start'),
                onPressed: () {
                  if (isTimerRunning) {
                    // Stop the timer
                    timer.cancel();
                    isTimerRunning = false;
                  } else {
                    // Start the timer
                    timer = Timer.periodic(Duration(seconds: 1), (timer) {
                      setState(() {
                        elapsedTime++;
                      });
                    });
                    isTimerRunning = true;
                  }
                },
              ),
              SizedBox(height: 20),
              Text('Elapsed time: $elapsedTime seconds'),
              Text('Errors: $errorCount'),
              Text('Characters typed: $characterCount'),
              Text('Typing speed: ${calculateTypingSpeed()} WPM'),
              Text('CPM: ${calculateCPM()}'),
              SizedBox(height: 20),
              TextButton(
                child: Text('New Test'),
                onPressed: () {
                  setNewTestText();
                  resetStats();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculateTypingSpeed() {
    if (elapsedTime == 0) {
      return 0.0;
    }
    double minutes = elapsedTime / 60;
    double words = characterCount / 5;
    return (words / minutes).roundToDouble();
  }

  int calculateCPM() {
    if (elapsedTime == 0) {
      return 0;
    }
    double minutes = elapsedTime / 60;
    return (characterCount / minutes).round();
  }

  void resetStats() {
    setState(() {
      elapsedTime = 0;
      errorCount = 0;
      characterCount = 0;
      userInput = '';
      isTimerRunning = false;
    });
  }
}