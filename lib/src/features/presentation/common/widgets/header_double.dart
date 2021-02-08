import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HeaderDoubletext extends StatelessWidget {
  final String textHeader;
  final String textAction;
  final Function onTap;

  const HeaderDoubletext({this.textHeader, this.textAction, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          titleText(text: textHeader, fontSize: 20.0),
          Spacer(),
          GestureDetector(
            onTap: onTap,
            child: titleText(
                text: textAction,
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
