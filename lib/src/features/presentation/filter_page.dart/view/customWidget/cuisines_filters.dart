import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:flutter/material.dart';

class Cuisinesfilter extends StatefulWidget {
  @override
  _CuisinesfilterState createState() => _CuisinesfilterState();
}

class _CuisinesfilterState extends State<Cuisinesfilter> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _roundedButtonFilter(
                  labelText: 'American',
                  isActive: btnAmerican,
                  onPress: () => {setState(() => btnAmerican = !btnAmerican)}),
              _roundedButtonFilter(
                  labelText: 'Asia',
                  isActive: btnAsia,
                  onPress: () => {setState(() => btnAsia = !btnAsia)}),
              _roundedButtonFilter(
                  labelText: 'Sushi',
                  isActive: btnSushi,
                  onPress: () => {setState(() => btnSushi = !btnSushi)}),
              _roundedButtonFilter(
                  labelText: 'Pizza',
                  isActive: btnPizza,
                  onPress: () => {setState(() => btnPizza = !btnPizza)}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _roundedButtonFilter(
                  labelText: 'Desserts',
                  isActive: btnDesserts,
                  onPress: () => {setState(() => btnDesserts = !btnDesserts)}),
              _roundedButtonFilter(
                  labelText: 'Fast Food',
                  isActive: btnFastFood,
                  onPress: () => {setState(() => btnFastFood = !btnFastFood)}),
              _roundedButtonFilter(
                  labelText: 'Vietnamese',
                  isActive: btnVietnamese,
                  onPress: () =>
                      {setState(() => btnVietnamese = !btnVietnamese)}),
            ],
          )
        ],
      ),
    );
  }
}

Widget _roundedButtonFilter(
    {Function onPress, bool isActive = false, String labelText = ''}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
        elevation: 0.5,
        //shape: const BeveledRectangleBorder(
        //    borderRadius: BorderRadius.all(Radius.circular(5.0))),
        shape: StadiumBorder(),
        // shadowColor: MaterialStateProperty.all<Color>(Colors.white),
        side: BorderSide(color: isActive ? orange : gris, width: 2),
        primary: Colors.white),
    child: Text(
      labelText,
      style: TextStyle(color: isActive ? orange : gris),
    ),
  );
}
