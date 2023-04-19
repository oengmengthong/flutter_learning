import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Try tapping the button below (absorbing: true):'),
          AbsorbPointer(
            absorbing: true, // Set to false to enable the button
            child: TextButton(
              onPressed: () {
                print('Button tapped!');
              },
              child: Text('Tap me!'),
            ),
          ),
          Text('Try tapping the button below (absorbing: false,):'),
          AbsorbPointer(
            absorbing: false, // Set to false to enable the button
            child: TextButton(
              onPressed: () {
                print('Button tapped!');
              },
              child: Text('Tap me!'),
            ),
          ),
        ],
      ),
    );
  }
}
