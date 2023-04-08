import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino Widget (iOS)',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('My App'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: Text('Press Me'),
              onPressed: () {
                print('Button Pressed');
              },
            ),
            SizedBox(height: 20.0),
            CupertinoContextMenu(
              child: Text('Long Press Me'),
              actions: [
                CupertinoContextMenuAction(
                  child: Text('Option 1'),
                  onPressed: () {
                    print('Option 1 Selected');
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text('Option 2'),
                  onPressed: () {
                    print('Option 2 Selected');
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              child: Text('Show Alert'),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text('Alert'),
                      content: Text('This is an alert.'),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.0),
            CupertinoButton(
              child: Text('Show Date Picker'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300.0,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (DateTime newDate) {
                          print('New Date Selected: $newDate');
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}