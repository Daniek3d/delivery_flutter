import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/common/widgets/widget_files.dart';

class CollectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: TitleText(
              text: 'Collections',
              fontSize: 17,
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return BackButton(
                  color: Colors.black,
                );
              },
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
                _card(
                    context: context, titulo: 'Asian', subtitulo: '128 places'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card({BuildContext context, String titulo, String subtitulo}) {
  return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 165,
              height: 190,
              fit: BoxFit.cover,
              image: NetworkImage('https://source.unsplash.com/U6-KvV7HlMk'),
            ),
          ),
          Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 35, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TitleText(
                  text: titulo,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                TitleText(
                  text: subtitulo,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                )
              ],
            ),
          )
        ],
      ));
}
