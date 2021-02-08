import 'package:delivery_app/src/features/presentation/common/widgets/title_text.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';

class CardVertical extends StatelessWidget {
  // BuildContext context;
  final String titleText;
  final String subTitle;
  final double width;
  final double height;
  final ImageProvider<Object> image;

  CardVertical({
    //this.context,
    @required this.width,
    @required this.height,
    @required this.image,
    @required this.titleText,
    @required this.subTitle,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: width,
              height: height,
              fit: BoxFit.cover,
              image:
                  image, // NetworkImage('https://source.unsplash.com/YzncgJOl6bk'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: TitleText(
                    text: titleText,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: TitleText(
                    text: subTitle,
                    fontSize: 13.0,
                    color: gris,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
