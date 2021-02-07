import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/title_text.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              _topBar(context),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: titleText('Discover new places', Colors.black)),
              _sliderCards(context),
              _headers(context, 'Popular this week', 'Show all'),
              _populares(context, 'https://source.unsplash.com/YzncgJOl6bk'),
              _populares(context, 'https://source.unsplash.com/zNqArwc7Hh4'),
              _populares(context, 'https://source.unsplash.com/FdtvQ6SJxmY'),
              SizedBox(
                height: 10.0,
              ),
              _headers(context, 'Collections', 'Show all'),
              _sliderCollections(),
            ]),
          )
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 10),
    height: 70,
    child: Row(
      children: [
        Container(
          width: 310,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Search',
                  style: TextStyle(color: gris, fontSize: 17.0),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 45.0,
          height: 45.0,
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 214, 1.0),
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

Widget _sliderCards(BuildContext context) {
  return Container(
    height: 200.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
          },
        );
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: 180.0,
            height: 120.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://source.unsplash.com/YzncgJOl6bk'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Adndy & Cindy\'s Diner',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '87 Botsfrod Circle Apt',
                style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0),
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: amarillo,
              size: 16,
            ),
            Text(
              '4.8',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0),
            ),
            Text(
              '233 ratings',
              style: TextStyle(
                  color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: 80.0,
              height: 18.0,
              child: RaisedButton(
                elevation: 0.5,
                shape: StadiumBorder(),
                color: Theme.of(context).accentColor,
                onPressed: () {},
                child: Text(
                  'Delivery',
                  style: TextStyle(fontSize: 11.0, color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(children: [
    Container(
        alignment: Alignment.centerLeft,
        child: titleText(textHeader, Colors.black, 20.0)),
    Spacer(),
    GestureDetector(
      child: Row(
        children: [
          Text(
            textAction,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ),
          Icon(Icons.play_arrow),
        ],
      ),
    ),
  ]);
}

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(foto),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child:
                          titleText('Andy & Cindy\'s Diner', Colors.black, 17)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      '87 Botsford Circle Apt',
                      style: (TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: amarillo,
                        size: 16.0,
                      ),
                      Text(
                        '4.5',
                        style: (TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          '230 rating',
                          style: (TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                          child: Text('Delivery',
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.white)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjetaColecction(context);
          },
        );
      },
    ),
  );
}

Widget _tarjetaColecction(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage('https://source.unsplash.com/YzncgJOl6bk'),
          ),
        ),
      ],
    ),
  );
}
