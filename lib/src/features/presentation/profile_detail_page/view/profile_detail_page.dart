import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/components/avatar_view.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/components/textfield_view.dart';
import 'package:delivery_app/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/utils/extensions/screen_size.dart';

class ProfileDetailPage extends StatefulWidget {
  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        centerTitle: true,
        title: titleText(text: 'Edit Profile', fontSize: 17),
        backgroundColor: white,
        elevation: 0.4,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15.0),
              child: titleText(
                  text: 'Done',
                  color: orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(
                  top: screenHeigth.getScreenHeight(
                      context: context, multiplier: 0.1),
                  left: 15,
                  right: 15),
              decoration: createboxDecorationWithShadow(),
              width: screenWidth.getScreenWidth(context: context),
              height: screenWidth.getScreenHeight(
                  context: context, multiplier: 0.75),
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: AvatarView(
                        backgroundImage:
                            'https://source.unsplash.com/KAN4bY3oqSw'),
                  ),
                  TextfieldProfileDetailView()
                ],
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
