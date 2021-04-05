import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  RangeValues _values = RangeValues(0.3, 1.0);
  int _minPrice = 0;
  int _maxPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '\$ $_minPrice',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          width: 300,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 100,
            labels: RangeLabels(
              _values.start.round().toString(),
              _values.end.round().toString(),
            ),
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrice = _values.start.toInt();
                _maxPrice = _values.end.toInt();
              });
            },
          ),
        ),
        Text(
          '\$ $_maxPrice',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
