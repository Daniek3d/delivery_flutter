import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  final String backgroundImage;

  const AvatarView({@required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: createboxDecorationWithShadow(
              borderRadius: BorderRadius.circular(65)),
          child: CircleAvatar(
            backgroundImage: NetworkImage(backgroundImage),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: rosa, borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.camera_alt,
              color: white,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
