import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

double buttonOpacity = 1.0;
String? gKey;

class _MyHomePageState extends State<MyHomePage> {
  void _handleKeystroke(String key) {
    // Handle the keystroke here
    print("pressed $key");
  }

  void _flashButton() {
    setState(() {
      buttonOpacity = 0.5;
    });
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        buttonOpacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKey: (FocusNode node, RawKeyEvent event) {
        print(event.character!);
        if (event is RawKeyDownEvent) {
          _flashButton();
        }
        setState(() {
          gKey = event.character;
        });
        return KeyEventResult.ignored;
      },
      child: Scaffold(
          appBar: AppBar(title: Text('Keyboard Listener')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Text(
                        "This Area will use for input text and speed typing")),
                DesktopKeyboardLayout(onKeystroke: _handleKeystroke),
              ],
            ),
          )),
    );
  }
}

class DesktopKeyboardLayout extends StatefulWidget {
  final Function(String) onKeystroke;

  DesktopKeyboardLayout({required this.onKeystroke});

  @override
  _DesktopKeyboardLayoutState createState() => _DesktopKeyboardLayoutState();
}

class _DesktopKeyboardLayoutState extends State<DesktopKeyboardLayout> {
  bool _isShiftMode = false;

  List<String> _normalKeys = [
    // 'esc', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9', 'f10', 'f11', 'f12',
    '`', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=',
    'backspace',
    'tab', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\\',
    'capslock', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', 'enter',
    'shift', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 'shift',
    'ctrl', 'win', 'alt', 'space', 'alt', 'win', 'menu', 'ctrl'
  ];

  List<String> _shiftKeys = [
    // 'esc', 'f1', 'f2', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9', 'f10', 'f11', 'f12',
    '~', '!', '@', '#', r'$', '%', '^', '&', '*', '(', ')', '_', '+',
    'backspace',
    'tab', 'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '{', '}', '|',
    'capslock', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ':', '"', 'enter',
    'shift', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '<', '>', '?', 'shift',
    'ctrl', 'win', 'alt', 'space', 'alt', 'win', 'menu', 'ctrl'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 134, 134, 134),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // _buildRow((_isShiftMode ? _shiftKeys : _normalKeys).sublist(0, 13)),
          _buildRow((_isShiftMode ? _shiftKeys : _normalKeys).sublist(0, 14)),
          _buildRow((_isShiftMode ? _shiftKeys : _normalKeys).sublist(14, 28)),
          _buildRow((_isShiftMode ? _shiftKeys : _normalKeys).sublist(28, 41)),
          _buildRow((_isShiftMode ? _shiftKeys : _normalKeys).sublist(41, 53)),
          _buildRow((_isShiftMode ? _shiftKeys : _normalKeys).sublist(53, 60)),
        ],
      ),
    );
  }

  Widget _buildRow(List<String> keys) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: keys.map((key) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: AnimatedOpacity(
              opacity: gKey == key ? buttonOpacity : 1,
              duration: Duration(milliseconds: 100),
              child: _buildKeyButton(key)),
        );
      }).toList(),
    );
  }

  Widget _buildKeyButton(String key) {
    if (key == 'space') {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.585,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            widget.onKeystroke(' ');
          },
          child: Center(
            child: Icon(
              Icons.space_bar,
              size: 35,
            ),
          ),
        ),
      );
    } else if (key == 'enter') {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.119,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            widget.onKeystroke('\n');
          },
          child: Center(
            child: Text(
              'enter',
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
      );
    } else if (key == 'shift') {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.154,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _isShiftMode = !_isShiftMode;
            });
          },
          child: Center(
            child: Text(
              'shift',
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
      );
    } else if (key == 'backspace') {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.1,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            widget.onKeystroke('\b');
          },
          child: Center(
            child: Icon(
              Icons.backspace,
              size: 35,
            ),
          ),
        ),
      );
    } else if (key == 'capslock') {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.119,
        height: 80,
        child: Stack(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'caps lock',
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
            Positioned(
                left: 14,
                top: 14,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: _isShiftMode
                      ? Color.fromARGB(255, 0, 198, 33)
                      : Colors.transparent,
                ))
          ],
        ),
      );
    } else if (key == 'tab') {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.1,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            widget.onKeystroke('\t');
          },
          child: Center(
            child: Text(
              'tab',
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.065,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            widget.onKeystroke(_isShiftMode ? key.toUpperCase() : key);
          },
          child: Center(
            child: Text(
              // _isShiftMode ? key.toUpperCase() :
              key,
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
      );
    }
  }
}
