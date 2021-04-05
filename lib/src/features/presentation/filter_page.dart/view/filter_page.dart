import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';

import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';

import 'package:delivery_app/src/features/presentation/filter_page.dart/view/customWidget/cuisines_filters.dart';
import 'package:delivery_app/src/features/presentation/filter_page.dart/view/customWidget/list_tile_checked.dart';
import 'package:delivery_app/src/features/presentation/filter_page.dart/view/customWidget/price_filter.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // Short by booleans
  bool topRated = false;
  bool nearestMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // Filter boolean
  bool openNow = false;
  bool creditCard = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0),
                child: titleText(
                    text: 'CUISINES',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Cuisinesfilter()),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0),
                child: titleText(
                    text: 'SORT BY',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _sortByContainer(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0),
                child: titleText(
                    text: 'FILTER',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _filterContainer(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0),
                child: titleText(
                    text: 'PRICE',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              PriceFilter(),
            ]),
          )
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileChecked(
              texto: 'Top Rated',
              isActive: topRated,
              onTap: () {
                setState(() {
                  topRated = !topRated;
                });
              },
            ),
            ListTileChecked(
              texto: 'Nerest Me',
              isActive: nearestMe,
              onTap: () {
                setState(() {
                  nearestMe = !nearestMe;
                });
              },
            ),
            ListTileChecked(
              texto: 'Cost High to Low',
              isActive: costHighToLow,
              onTap: () {
                setState(() {
                  costHighToLow = !costHighToLow;
                  costLowToHigh = !costHighToLow;
                });
              },
            ),
            ListTileChecked(
              texto: 'Cost Low to High',
              isActive: costLowToHigh,
              onTap: () {
                setState(() {
                  costLowToHigh = !costLowToHigh;
                  costHighToLow = !costLowToHigh;
                });
              },
            ),
            ListTileChecked(
              texto: 'Most Popular',
              isActive: mostPopular,
              onTap: () {
                setState(() {
                  mostPopular = !mostPopular;
                });
              },
            ),
          ],
        ));
  }

  Widget _filterContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileChecked(
              texto: 'Open Now',
              isActive: openNow,
              onTap: () {
                setState(() {
                  openNow = !openNow;
                });
              },
            ),
            ListTileChecked(
              texto: 'Credit cards',
              isActive: creditCard,
              onTap: () {
                setState(() {
                  creditCard = !creditCard;
                });
              },
            ),
            ListTileChecked(
              texto: 'alcohol Served',
              isActive: alcoholServed,
              onTap: () {
                setState(() {
                  alcoholServed = !alcoholServed;
                });
              },
            ),
          ],
        ));
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: TitleText(
      text: 'Filters',
      fontWeight: FontWeight.w600,
    ),
    leading: Container(
      padding: EdgeInsets.only(top: 20.0, left: 10.0),
      child: TitleText(
        text: 'Reset',
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 20.0, right: 10.0),
          child: TitleText(
              text: 'Done',
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
              color: orange),
        ),
      ),
    ],
  );
}
