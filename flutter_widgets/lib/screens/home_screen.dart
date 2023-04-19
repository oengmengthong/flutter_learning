import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/list_view.dart';
import 'package:flutter_widgets/screens/search_screen.dart';
import 'package:flutter_widgets/utils/cupertino_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoThemeWidget(
      child: CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('Flutter Widgets'),
                trailing: CupertinoButton(
                  child: Icon(CupertinoIcons.search),
                  onPressed: () {
                    // Handle search button press
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => SearchScreen()));
                  },
                ),
              )
            ];
          },
          body: ListViewScreen(),
        ),
      ),
    );
  }
}
