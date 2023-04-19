import 'package:flutter/cupertino.dart';
import 'package:flutter_widgets/utils/themes.dart';

class CupertinoThemeWidget extends StatelessWidget {
  CupertinoThemeWidget({super.key, required this.child});
  final Widget child;
  bool isDarkMode = true;
  @override
  Widget build(BuildContext context1) {
    final Brightness brightness = MediaQuery.of(context1).platformBrightness;
    isDarkMode = brightness == Brightness.dark;

    return CupertinoTheme(
      data: isDarkMode ? darkCupertinoTheme : lightCupertinoTheme,
      child: child,
    );
  }
}
