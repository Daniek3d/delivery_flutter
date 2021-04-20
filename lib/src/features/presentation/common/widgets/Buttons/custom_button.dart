part of '../widget_files.dart';

Widget customButton({
  BuildContext context,
  @required onPressed,
  String text = '',
  fontSize = 18.0,
  Widget textButton,
  size,
  String image = '',
  ImageProvider<Object> icon,
  @required Color colorBackGround,
  @required Color colorText,
  double width = 350.0,
  double height = 45,
  @deprecated double radius = 20.0,
  BorderRadiusGeometry borderRadius,
  EdgeInsetsGeometry margin,
}) {
  // print();
  return Container(
    margin: margin == null ? EdgeInsets.only(top: radius) : margin,
    width: width,
    height: height,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius == null ? BorderRadius.circular(20) : borderRadius,
          ),
          primary: colorBackGround,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          (image.isNotEmpty || icon != null)
              ? Image(
                  image: icon != null ? icon : AssetImage(image),
                  width: 30.0,
                  height: 30.0,
                )
              : Container(),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: text.length > 0
                ? Text(text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: colorText,
                    ))
                : textButton,
          ),
        ])),
  );
}
