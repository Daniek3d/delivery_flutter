import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/tabs/tabs_files.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';

class CollectionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image:
                        NetworkImage('https://source.unsplash.com/U6-KvV7HlMk'),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Center(
                    child: TitleText(
                      text: 'Asian \n Restaurant',
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: TitleText(
                      text: '128 places',
                      color: Color.fromARGB(51, 58, 77, 100),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              Column(
                children: [
                  favouritesCard(
                      image: NetworkImage(
                          'https://source.unsplash.com/U6-KvV7HlMk'),
                      title: "Andy & cindy's Diner",
                      subTitle: '87 Botsford Circle Apt',
                      review: "4.9",
                      rating: '(233 rating)',
                      bottonText: 'Delivery',
                      isFavourite: true),
                  favouritesCard(
                      image: NetworkImage(
                          'https://source.unsplash.com/U6-KvV7HlMk'),
                      title: "Andy & cindy's Diner",
                      subTitle: '87 Botsford Circle Apt',
                      review: "4.9",
                      rating: '(233 rating)',
                      bottonText: 'Delivery',
                      isFavourite: false),
                  favouritesCard(
                      image: NetworkImage(
                          'https://source.unsplash.com/U6-KvV7HlMk'),
                      title: "Andy & cindy's Diner",
                      subTitle: '87 Botsford Circle Apt',
                      review: "4.9",
                      rating: '(233 rating)',
                      bottonText: 'Delivery',
                      isFavourite: true),
                  favouritesCard(
                      image: NetworkImage(
                          'https://source.unsplash.com/U6-KvV7HlMk'),
                      title: "Andy & cindy's Diner",
                      subTitle: '87 Botsford Circle Apt',
                      review: "4.9",
                      rating: '(233 rating)',
                      bottonText: 'Delivery',
                      isFavourite: false),
                  favouritesCard(
                      image: NetworkImage(
                          'https://source.unsplash.com/U6-KvV7HlMk'),
                      title: "Andy & cindy's Diner",
                      subTitle: '87 Botsford Circle Apt',
                      review: "4.9",
                      rating: '(233 rating)',
                      bottonText: 'Delivery',
                      isFavourite: true),
                  favouritesCard(
                      image: NetworkImage(
                          'https://source.unsplash.com/U6-KvV7HlMk'),
                      title: "Andy & cindy's Diner",
                      subTitle: '87 Botsford Circle Apt',
                      review: "4.9",
                      rating: '(233 rating)',
                      bottonText: 'Delivery',
                      isFavourite: false),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
