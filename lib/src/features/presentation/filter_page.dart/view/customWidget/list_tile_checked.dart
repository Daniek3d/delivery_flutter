import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';

class ListTileChecked extends StatefulWidget {
  final String texto;
  final bool isActive;
  final Function onTap;
  ListTileChecked({Key key, this.texto, this.isActive, this.onTap})
      : super(key: key);

  @override
  _ListTileCheckedState createState() => _ListTileCheckedState();
}

class _ListTileCheckedState extends State<ListTileChecked> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _listTiles(
          context: context,
          isActive: widget.isActive,
          texto: widget.texto,
          onTap: widget.onTap,
        )
      ],
    );
  }
}

Widget _listTiles({
  BuildContext context,
  String texto = '',
  Function onTap,
  bool isActive = false,
}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      onTap: onTap,
      title: TitleText(
        fontSize: 15.0,
        fontWeight: FontWeight.w300,
        text: texto,
        color: isActive ? orange : negro,
      ),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? orange : gris,
            )
          : Text(''),
    ),
  );
}
