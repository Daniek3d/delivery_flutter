import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';
import 'package:flutter/material.dart';

class EmptyOrderView extends StatelessWidget {
  const EmptyOrderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        leading: Text(''),
        backgroundColor: white,
        title: titleText(
          text: 'My Order',
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  width: 216,
                  height: 216,
                  image: AssetImage('assets/emptyOrder.png')),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: titleText(
                    text: 'Card Empty',
                    color: gris,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: titleText(
                    text:
                        'Good food is always cooking! go ahead, order some yummy items from the menu',
                    color: gris,
                    fontSize: 17,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
