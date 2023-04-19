import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const lightCupertinoTheme = CupertinoThemeData(
  brightness: Brightness.light,
  primaryColor: CupertinoColors.activeBlue,
  primaryContrastingColor: CupertinoColors.white,
  scaffoldBackgroundColor: CupertinoColors.white,
  barBackgroundColor: CupertinoColors.white,
  textTheme: CupertinoTextThemeData(
    primaryColor: CupertinoColors.black,
    pickerTextStyle: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w500,
      color: CupertinoColors.black,
    ),
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    actionTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    tabLabelTextStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    ),
    dateTimePickerTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    navTitleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    navLargeTitleTextStyle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
);

final darkCupertinoTheme = CupertinoThemeData(
  brightness: Brightness.dark,
  primaryColor: CupertinoColors.activeBlue,
  primaryContrastingColor: CupertinoColors.white,
  scaffoldBackgroundColor: CupertinoColors.black,
  barBackgroundColor: CupertinoColors.black,
  textTheme: CupertinoTextThemeData(
    primaryColor: CupertinoColors.white,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    actionTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    tabLabelTextStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.grey[400],
    ),
    dateTimePickerTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    navTitleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    navLargeTitleTextStyle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  primaryColorLight: Colors.blue[200],
  primaryColorDark: Colors.blue[900],
  dividerColor: Colors.grey[300],
  cardColor: Colors.white,
  canvasColor: Colors.grey[50],
  dialogBackgroundColor: Colors.white,
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
  colorScheme: ColorScheme(
    primary: Colors.blue,
    secondary: Colors.green,
    surface: Colors.white,
    background: Colors.grey[100]!,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ).copyWith(error: Colors.red).copyWith(secondary: Colors.pink),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: CupertinoColors.systemGrey5,
    thickness: 1.0,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.grey[900],
  primaryColorLight: Colors.blue[700],
  primaryColorDark: Colors.blue[300],
  dividerColor: Colors.grey[700],
  cardColor: Colors.grey[800],
  canvasColor: Colors.grey[900],
  dialogBackgroundColor: Colors.grey[800],
  bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey[800]),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ).titleLarge,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.white,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: CupertinoColors.systemGrey6,
    thickness: 1.0,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey[900],
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey[400],
  ),
  cardTheme: CardTheme(
    color: Colors.grey[800],
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
  colorScheme: ColorScheme(
    primary: Colors.blue,
    secondary: Colors.pink,
    surface: Colors.grey[900]!,
    background: Colors.grey[800]!,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
);
