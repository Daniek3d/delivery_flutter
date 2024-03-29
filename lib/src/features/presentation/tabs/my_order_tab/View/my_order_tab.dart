part of '../../tabs_files.dart';

class MyOrderTab extends StatefulWidget {
  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: emptyOrderState
          ? EmptyOrderView()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
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
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          _orders(context),
                          SizedBox(
                            height: 40,
                          ),
                          _checkoutResume(context)
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

Widget _orders(BuildContext context) {
  return Column(
    children: [_cardOrder(context)],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        Row(
          children: [
            _cardOrderTopContent(),
          ],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context)
          ],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: titleText(
              text: 'Little Creatures - Club street',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: gris,
                size: 16.0,
              ),
              titleText(
                  text: '87 Botsford Circle Apt',
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0),
              Container(
                margin: EdgeInsets.only(left: 70.0), //(horizontal: 15.0),
                width: 110.0,
                height: 20.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    shape: StadiumBorder(),
                    primary: orange,
                  ),
                  child: TitleText(
                    text: 'Free Delivery',
                    fontSize: 11.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(
              text: 'Special Gajananad Bhel',
              color: orange,
              fontWeight: FontWeight.w300,
              fontSize: 15.0),
          titleText(
              text: 'Mixed vefetables, Chicken Egg',
              color: gris,
              fontWeight: FontWeight.w300,
              fontSize: 12.0)
        ],
      ),
      trailing: titleText(
          text: '17.20',
          color: gris,
          fontWeight: FontWeight.w500,
          fontSize: 15.0),
    ),
  );
}

Widget _moreContent(BuildContext context) {
  return Container(
    child: ListTile(
      title: titleText(
          text: 'Add more items',
          color: rosa,
          fontWeight: FontWeight.bold,
          fontSize: 15.0),
    ),
  );
}

Widget _checkoutResume(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        _itemsCheckOutResume(
            context: context, title: 'Subtotal', value: '\$93.4'),
        _itemsCheckOutResume(
            context: context, title: 'Tax & Fees', value: '\$3.0'),
        _itemsCheckOutResume(
            context: context, title: 'Delivery', value: 'Free'),
        _buttonCheckout(context)
      ],
    ),
  );
}

Widget _itemsCheckOutResume(
    {context: BuildContext, title: String, value: String}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title:
          titleText(text: title, fontWeight: FontWeight.w400, fontSize: 15.0),
      trailing:
          titleText(text: value, fontWeight: FontWeight.w500, fontSize: 15.0),
    ),
  );
}

Widget _buttonCheckout(context) {
  return Container(
    width: double.infinity,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        shape: StadiumBorder(),
        primary: orange,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: TitleText(
              text: 'Continue',
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: white,
            ),
          ),
          Container(
            child: TitleText(
              text: '\$95.4',
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: white,
            ),
          ),
        ],
      ),
    ),
  );
}
