import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';
import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: titleText(
            text: 'Añadir a la Cesta 44.44',
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromRGBO(255, 237, 217, 1.0),
            expandedHeight: 395,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://source.unsplash.com/YzncgJOl6bk')),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.5),
                    ),
                  ),
                  Wrap(
                    children: [
                      _promoButton(),
                      _infoPlace(),
                      _infoPlaceStats(),
                      _offerBanner(),
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image(
                    width: 15,
                    height: 15,
                    image: AssetImage('assets/share.png')),
              ),
              IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {})
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _headers(texto: "Populars"),
              _sliderCards(),
              _headers(texto: "Full Menu"),
              _menuList(context),
              _headers(texto: "Reviews"),
              _reviews(),
              _headers(texto: "Your Raiting"),
              _yourRaiting(),
              SizedBox(
                height: 150.0,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: EdgeInsets.only(top: 121, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: orange,
          ),
          onPressed: () {},
          child: titleText(
              text: 'Free Delivery', color: Colors.white, fontSize: 12.0),
        ),
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: titleText(
            text: 'Boom Lay Ho Huat Fried Prawn Noodle',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            titleText(
                text: '03 Jameson Manors Apt. 177',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
      ),
    ],
  );
}

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top: 26.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
      top: BorderSide(color: Colors.white),
      bottom: BorderSide(color: Colors.white),
    )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 19.0,
                ),
                titleText(
                    text: '4.5',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ],
            ),
            titleText(
                text: '351 Raitings',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 19.0,
                ),
                titleText(
                    text: '137k',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ],
            ),
            titleText(
                text: 'Favorits',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 19.0,
                ),
                titleText(
                    text: '346',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ],
            ),
            titleText(
                text: 'Photos',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: Color.fromRGBO(255, 237, 217, 1.0),
    padding: EdgeInsets.all(20),
    height: 90.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(
                text: 'New Try Pickup',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            titleText(
                text:
                    'Pickup on yout time, Your order is \n ready when you are',
                color: gris,
                fontWeight: FontWeight.w400,
                fontSize: 13.0)
          ],
        ),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            primary: orange,
          ),
          onPressed: () {},
          child: titleText(
              text: 'Order Now',
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget _headers({texto: String}) {
  return Container(
    margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: HeaderDoubletext(
      textHeader: texto,
      textAction: '',
    ),
  );
}

Widget _sliderCards() {
  return Container(
    height: 210.0,
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cards();
        }),
  );
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
              width: 200.0,
              height: 100.0,
              fit: BoxFit.cover,
              image: NetworkImage('https://source.unsplash.com/YzncgJOl6bk')),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: titleText(
              text: 'Peanut Chaat with Dahi',
              fontWeight: FontWeight.bold,
              fontSize: 15.0),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 5.0),
          child: titleText(
              text: "9.50 \$ ",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: gris),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: titleText(
                  text: "Select ",
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: orange),
            ),
            Container(
              color: orange,
              margin: EdgeInsets.only(top: 10, left: 100),
              child: Image(
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/share.png')),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        _menuItem(context, 'Salads', '4'),
        _menuItem(context, 'Salads', '4'),
        _menuItem(context, 'Salads', '4'),
        _menuItem(context, 'Salads', '4'),
        _menuItem(context, 'Salads', '4'),
        _menuItem(context, 'Salads', '4'),
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
    child: Column(
      children: [
        ListTile(
          title: titleText(
              text: texto, fontWeight: FontWeight.w300, fontSize: 17.0),
          trailing: titleText(
              text: itemCount, fontWeight: FontWeight.w300, fontSize: 17.0),
        ),
        _sliderCards()
      ],
    ),
  );
}

Widget _reviews() {
  return Container(
    height: 155,
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cardReviews();
        }),
  );
}

Widget _cardReviews() {
  String lorem =
      'Veniam eu laboris irure sint. Culpa do ullamco nostrud magna commodo. Pariatur cillum labore duis adipisicing non. Nostrud adipisicing ut ullamco esse ipsum aliquip minim magna sunt.';
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    width: 350,
    child: Column(children: [
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
                width: 49.0,
                height: 43.0,
                fit: BoxFit.cover,
                image: NetworkImage('https://source.unsplash.com/YzncgJOl6bk')),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleText(
                    text: 'Mike smithso',
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                titleText(
                    text: '45 Reviews',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: gris)
              ],
            ),
          ),
          Spacer(),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 60,
                height: 30,
                color: orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    titleText(
                        text: '4',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        child: titleText(
          text: lorem,
          color: gris,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        child: titleText(
          text: 'See full review',
          color: orange,
          fontSize: 15,
        ),
      )
    ]),
  );
}

Widget _yourRaiting() {
  String lorem =
      'Veniam eu laboris irure sint. Culpa do ullamco nostrud magna commodo. Pariatur cillum labore duis adipisicing non. Nostrud adipisicing ut ullamco esse ipsum aliquip minim magna sunt.';

  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWithHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      titleText(
                          text: '1',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWithHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      titleText(
                          text: '2',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWithHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      titleText(
                          text: '3',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWithHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      titleText(
                          text: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWithHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      titleText(
                          text: '5',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20),
          child: titleText(
              text: lorem,
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20),
          child: titleText(
            text: '+ edit your review',
            color: orange,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        )
      ],
    ),
  );
}
