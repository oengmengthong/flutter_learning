import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
        ),
      ),
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String equation = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      equation += buttonText;
    });
  }

  void _onClearPressed() {
    setState(() {
      equation = '';
    });
  }

  void _onEqualsPressed() {
    Parser parser = Parser();
    Expression expression = parser.parse(equation);
    double result = expression.evaluate(EvaluationType.REAL, ContextModel());

    setState(() {
      equation = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Text(
                equation,
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.blue,
                    ),
                    onPressed: _onClearPressed,
                    child: Text(
                      'C',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: TextButton(
                    onPressed: () => _onButtonPressed('^'),
                    child: Text(
                      '^',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: TextButton(
                    onPressed: () => _onButtonPressed('%'),
                    child: Text(
                      '%',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('/'),
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('7'),
                    child: Text(
                      '7',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('8'),
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('9'),
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('*'),
                    child: Text(
                      '*',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('4'),
                    child: Text(
                      '4',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('5'),
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('6'),
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('-'),
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('1'),
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('2'),
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('3'),
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('+'),
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('0'),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onButtonPressed('.'),
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () => _onEqualsPressed(),
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
