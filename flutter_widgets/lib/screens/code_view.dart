import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class CodeViewerScreen extends StatefulWidget {
  final String filePath;
  final bool isDarkMode;
  const CodeViewerScreen({Key? key, required this.filePath, this.isDarkMode = true}) : super(key: key);

  @override
  State<CodeViewerScreen> createState() => _CodeViewerScreenState();
}

class _CodeViewerScreenState extends State<CodeViewerScreen> {
  bool _isDarkMode = true;

  @override
  void initState() {
    // TODO: implement initState
    _isDarkMode = widget.isDarkMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String>(
        future: rootBundle.loadString(widget.filePath),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SyntaxView(
              code: snapshot.data!,
              syntax: Syntax.DART,
              syntaxTheme: _isDarkMode ? SyntaxTheme.vscodeDark() : SyntaxTheme.vscodeLight(),
              withZoom: true,
              withLinesCount: true,
              expanded: true,
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: _isDarkMode ? Colors.white : Colors.black,
        onPressed: () {
          setState(() {
            _isDarkMode = !_isDarkMode;
          });
        },
        child: Icon(
          _isDarkMode ? Icons.brightness_7 : Icons.brightness_4,
          color: _isDarkMode ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
