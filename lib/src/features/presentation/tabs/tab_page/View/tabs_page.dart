part of '../../tabs_files.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouritesTab(),
    ProfielTab()
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _getPermisionLocation(context);
    });
  }

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  Widget _bottomNavigatorBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _changeWidget,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: 'My Order'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favourite'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Profile'),
      ],
    );
  }

  Future _getPermisionLocation(context) async {
    await showAlert(
        onPresed: () => {},
        context: context,
        image: 'assets/location.png',
        title: 'Enable yout Location',
        body:
            'Please allow to use yout location to show nearby restaurant on the map',
        textButton: 'Enable location');
  }
}
