part of '../../tabs_files.dart';

class ProfielTab extends StatefulWidget {
  @override
  _ProfielTabState createState() => _ProfielTabState();
}

class _ProfielTabState extends State<ProfielTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(context),
          _contentProfile(),
        ],
      ),
    );
  }
}

Widget _header(BuildContext context) {
  final _size = MediaQuery.of(context).size;
  print(_size.width);
  print(_size.height);
  return Container(
    height: 250,
    color: bgGreyPage,
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage:
              NetworkImage('https://source.unsplash.com/KAN4bY3oqSw'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  TitleText(
                      text: 'Cameron cook',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  IconButton(
                      icon: Icon(Icons.chevron_right),
                      color: gris,
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
                child: customButton(
                    margin: EdgeInsets.only(left: 10.0),
                    height: 25,
                    width: 200,
                    context: context,
                    onPressed: () {},
                    colorBackGround: rosa,
                    colorText: negro,
                    image: 'assets/crown.png',
                    textButton: TitleText(
                        text: 'Vip Member', color: white, fontSize: 11),
                    borderRadius: BorderRadius.circular(5)))
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  const fontSize = 15.0;
  const iconSize = 25.0;
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        ListTile(
          leading: Image(
              image: AssetImage('assets/noti.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'Notifications',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('assets/payicon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'Payment Methods',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('assets/rewardicon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'History', fontWeight: FontWeight.w400, fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('assets/promoicon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'Promo Code',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        SizedBox(height: 15),
        ListTile(
          leading: Image(
              image: AssetImage('assets/settingicon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'Settings',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('assets/inviteicon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'Invite friends',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('assets/helpicon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'Help Center',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('assets/abouticon.png'),
              width: iconSize,
              height: iconSize),
          title: titleText(
              text: 'About US',
              fontWeight: FontWeight.w400,
              fontSize: fontSize),
          trailing: Icon(Icons.chevron_right, color: gris),
        )
      ],
    ),
  );
}
