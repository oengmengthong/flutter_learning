import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/data.dart';
import 'package:flutter_widgets/utils/cupertino_theme.dart';

import 'code_view.dart';
import 'definition_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.item});
  final Item item;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _selectedSegment = 0;
  PageController _pageController = PageController(initialPage: 0);
  bool _isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    _isDarkMode = brightness == Brightness.dark;

    return CupertinoThemeWidget(
      child: Scaffold(
        appBar: CupertinoNavigationBar(
          previousPageTitle: "Back",
          middle: Text(widget.item.title),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoSlidingSegmentedControl(
                children: {
                  0: Text('UI'),
                  1: Text('Definition'),
                  2: Text('Code View'),
                },
                groupValue: _selectedSegment,
                onValueChanged: (value) {
                  setState(() {
                    _selectedSegment = value!;
                    _pageController.animateToPage(value, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                  });
                },
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  widget.item.widget,
                  DefinitionScreen(filePath: "assets/definitions/${widget.item.definition}"),
                  CodeViewerScreen(
                    filePath: "lib/widgets/${widget.item.pathFile}",
                    isDarkMode: _isDarkMode,
                  )
                ],
                onPageChanged: (value) {
                  setState(() {
                    _selectedSegment = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
