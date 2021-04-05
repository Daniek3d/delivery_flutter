part of '../widget_files.dart';

Widget backButton(BuildContext context, Color color) {
  return IconButton(
    icon: Icon(
      Icons.arrow_back,
      color: color,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
