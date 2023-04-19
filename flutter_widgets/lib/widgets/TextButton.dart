import 'package:flutter/material.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Basic TextButton
        TextButton(
          onPressed: () {
            // Your action here
          },
          child: Text('Click me!'),
        ),
        // TextButton with custom text style:
        TextButton(
          onPressed: () {
            // Your action here
          },
          child: Text(
            'Click me!',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // TextButton with a custom button style:
        TextButton(
          onPressed: () {
            // Your action here
          },
          child: Text('Click me!'),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.blue,
            textStyle: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // TextButton with an icon:
        TextButton.icon(
          onPressed: () {
            // Your action here
          },
          icon: Icon(Icons.add),
          label: Text('Click me!'),
        ),
        // TextButton with custom padding:
        TextButton(
          onPressed: () {
            // Your action here
          },
          child: Text('Click me!'),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          ),
        )
      ],
    );
  }
}
