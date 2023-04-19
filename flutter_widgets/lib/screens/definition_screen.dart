import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

Future<String> loadAsset(String path) async {
  return await rootBundle.loadString(path);
}

Future<String?> getFileContents(String filePath) async {
  try {
    String contents = await loadAsset(filePath);
    return contents;
  } catch (e) {
    print("Failed to read file: $e");
    return null;
  }
}
Future<String?> readFile(String filePath) async {
  try {
    File file = File(filePath);
    String contents = await file.readAsString();
    print(contents);
    return contents;
  } catch (e) {
    print("Failed to read file: $e");
    return null;
  }
}

class DefinitionScreen extends StatefulWidget {
  final String filePath;

  DefinitionScreen({required this.filePath});
  @override
  State<DefinitionScreen> createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
  String? _fileContents;
  double _fontSize = 16.0;

  @override
  void initState() {
    super.initState();
    _loadFileContents();
  }

  void _loadFileContents() async {
    String? contents = await getFileContents(widget.filePath);
    setState(() {
      _fileContents = contents!;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_fileContents == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(_fileContents!),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _fontSize += 4.0;
              });
            },
            child: Icon(Icons.zoom_in),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
              if (_fontSize > 16.0) {
                setState(() {
                  _fontSize -= 4.0;
                });
              }
            },
            child: Icon(Icons.zoom_out),
          ),
        ],
      ),
    );
  }
}

