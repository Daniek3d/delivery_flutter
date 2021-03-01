part of 'widget_files.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  TitleText({
    this.text = '',
    this.color = Colors.black,
    this.fontSize = 30.0,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.justify,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          textAlign: textAlign,
          style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
          )),
    );
  }
}

Widget titleText(
    {String text = '',
    Color color = Colors.black,
    double fontSize = 30.0,
    FontWeight fontWeight = FontWeight.bold}) {
  return Text(text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ));
}
