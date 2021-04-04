part of '../../tabs_files.dart';

class MyOrderTab extends StatefulWidget {
  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: emptyOrderState
          ? EmptyOrderView()
          : Center(
              child: Text('Order View'),
            ),
    );
  }
}
