import 'package:flutter/material.dart';
import 'package:flutter_widgets/index.dart';

class Header {
  String title;
  String description;
  List<Item>? items;
  bool isExpanded;

  Header({
    required this.title,
    required this.description,
    this.isExpanded = false,
    this.items,
  });
}

class Item {
  String title;
  Widget widget;
  String description;
  String definition;
  String pathFile;

  Item({
    required this.title,
    required this.widget,
    required this.description,
    required this.definition,
    required this.pathFile,
  });
}

final List<Header> headers = [
  Header(
      title: "Basic widgets",
      description:
          "These are the building blocks of any Flutter app and include widgets for displaying text, images, and icons, as well as layout widgets like Container, Row, and Column",
      items: basic_widgets),
  Header(
      title: "Input widgets",
      description: "These widgets allow the user to input data, such as TextField, Checkbox, Radio, Switch, and Slider",
      items: input_widgets),
  Header(
      title: "Navigation widgets",
      description: "These widgets help you navigate between different screens in your app, such as Navigator, TabBar, and BottomNavigationBar",
      items: navigation_widgets),
  Header(
      title: "Material Design widgets",
      description: "These widgets implement the material design guidelines from Google, such as AppBar, Card, FloatingActionButton, and Snackbar",
      items: material_design_widgets),
  Header(
      title: "Cupertino widgets",
      description: "These widgets implement the iOS design language from Apple, such as CupertinoNavigationBar, CupertinoTextField, and CupertinoButton",
      items: cupertino_widgets),
  Header(
      title: "Form widgets",
      description: "These widgets help you build forms in your app, such as Form, TextFormField, and DropdownButton",
      items: form_widgets),
  Header(
      title: "Scrolling widgets",
      description: "These widgets allow the user to scroll through content, such as ListView, GridView, and SingleChildScrollView",
      items: scrolling_widgets),
  Header(
      title: "Animation widgets",
      description: "These widgets allow you to create animations in your app, such as AnimatedContainer, AnimatedOpacity, and AnimatedBuilder",
      items: animation_widgets),
  Header(
      title: "Drawing and painting widgets",
      description: "These widgets allow you to draw and paint custom graphics in your app, such as CustomPaint, ClipPath, and ShaderMask",
      items: drawing_and_painting_widgets),
  Header(
      title: "Platform-specific widgets",
      description:
          "These widgets allow you to use platform-specific functionality in your app, such as WebView for displaying web content and VideoPlayer for playing videos",
      items: platform_specific_widgets),
  Header(title: "Other", description: "", items: other),
];

final List<Item> basic_widgets = [
  Item(
    title: 'TextButton',
    widget: const TextButtonWidget(),
    description:
        'A TextButton in Flutter is a button widget that displays a text label and responds to user input when tapped. It has no background color or elevation by default, making it a good option for simple, text-based interfaces or for displaying buttons in a more subtle way. You can customize the appearance and behavior of the button by providing properties such as style, onPressed, onLongPress, focusNode, and autofocus.',
    definition: 'TextButton.txt',
    pathFile: "TextButton.dart",
  ),
];
final List<Item> input_widgets = [];
final List<Item> navigation_widgets = [];
final List<Item> material_design_widgets = [];
final List<Item> cupertino_widgets = [];
final List<Item> form_widgets = [];
final List<Item> scrolling_widgets = [];
final List<Item> animation_widgets = [];
final List<Item> drawing_and_painting_widgets = [];
final List<Item> platform_specific_widgets = [];
final List<Item> other = [];

final List<Item> items = [
  Item(
    title: 'TextButton',
    widget: const TextButtonWidget(),
    description:
        'A TextButton in Flutter is a button widget that displays a text label and responds to user input when tapped. It has no background color or elevation by default, making it a good option for simple, text-based interfaces or for displaying buttons in a more subtle way. You can customize the appearance and behavior of the button by providing properties such as style, onPressed, onLongPress, focusNode, and autofocus.',
    definition: 'TextButton.txt',
    pathFile: "TextButton.dart",
  ),
  Item(
    title: 'AlertDialog',
    widget: const AlertDialogWidget(),
    description:
        'AlertDialog is a material design widget in Flutter that displays a dialog box over the current screen, typically used to prompt the user for confirmation or to display important information. It consists of a title, an optional content area, and one or more action buttons, and is created using the AlertDialog constructor. The showDialog() function is used to display the AlertDialog widget over the current screen, and returns a Future that completes when the dialog box is dismissed.',
    definition: 'AlertDialog.txt',
    pathFile: "AlertDialog.dart",
  ),
  Item(
    title: 'AbsorbPointer',
    widget: const AbsorbPointerWidget(),
    description:
        'AbsorbPointer is a widget in Flutter that prevents its child widgets from receiving pointer events. It intercepts pointer events and prevents them from being propagated to its child widget. This widget is useful in situations where you want to disable certain user interactions temporarily but still want to display the relevant UI elements.',
    definition: 'AbsorbPointer.txt',
    pathFile: "AbsorbPointer.dart",
  ),
  Item(
    title: 'Align',
    widget: const AlertDialogWidget(),
    description:
        'Align can be useful in situations where you want to position a child widget within its parent widget in a specific way. For example, you might use it to position a button in the bottom right corner of a screen, or to center an image within a container.',
    definition: 'Align.txt',
    pathFile: "Align.dart",
  ),
  Item(
    title: 'zAbsorbPointer',
    widget: const AlertDialogWidget(),
    description: '',
    definition: 'AbsorbPointer.txt',
    pathFile: "AbsorbPointer.dart",
  ),
];
