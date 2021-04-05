part of '../../tabs_files.dart';

class FavouritesTab extends StatefulWidget {
  @override
  _FavouritesTabState createState() => _FavouritesTabState();
}

class _FavouritesTabState extends State<FavouritesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            leading: Text(''),
            backgroundColor: white,
            title: titleText(
                text: 'My favourite',
                // color: primary,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: [
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
                        isFavourite: true),
                  ])),
            ]),
          )
        ],
      ),
    );
  }
}
