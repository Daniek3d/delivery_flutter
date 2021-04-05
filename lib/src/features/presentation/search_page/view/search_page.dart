import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        alignment: Alignment.centerLeft,
                        child: titleText(
                            text: 'Search', color: Colors.black, fontSize: 30)),
                    _searchInput(context),
                    SizedBox(
                      height: 10.0,
                    ),
                    HeaderDoubletext(
                        textAction: 'Celar All', textHeader: 'Recent search'),
                    _sliderrecentSearch(context),
                    HeaderDoubletext(
                      textHeader: 'Recommend for you',
                      textAction: '',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PopularesCard(
                        textTitle: 'Andy & Cindy\'s Diner',
                        subTitle: '87 Botsford Circle Apt',
                        review: '4.5',
                        rating: '233 raitings',
                        botonText: 'Free Delivery',
                        image: NetworkImage(
                            'https://source.unsplash.com/YzncgJOl6bk')),
                    PopularesCard(
                        textTitle: 'Andy & Cindy\'s Diner',
                        subTitle: '87 Botsford Circle Apt',
                        review: '4.5',
                        rating: '233 raitings',
                        botonText: 'Free Delivery',
                        image: NetworkImage(
                            'https://source.unsplash.com/zNqArwc7Hh4')),
                    PopularesCard(
                        textTitle: 'Andy & Cindy\'s Diner',
                        subTitle: '87 Botsford Circle Apt',
                        review: '4.5',
                        rating: '233 raitings',
                        botonText: 'Free Delivery',
                        image: NetworkImage(
                            'https://source.unsplash.com/FdtvQ6SJxmY')),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 36.0,
    margin: EdgeInsets.only(top: 5.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(141, 141, 147, 1.2),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: gris,
          ),
          contentPadding: EdgeInsets.only(top: 5.0),
          hintText: 'Search',
          border: OutlineInputBorder(borderSide: BorderSide.none),
        )),
  );
}

Widget _sliderrecentSearch(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return CardVertical(
                // context: context,
                width: 160.0,
                height: 120.0,
                titleText: "Andy & cindy's Diner",
                subTitle: "87 botsford circle Apt",
                image: NetworkImage('https://source.unsplash.com/YzncgJOl6bk'));
          },
        );
      },
    ),
  );
}
