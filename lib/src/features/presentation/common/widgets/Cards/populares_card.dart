part of '../widget_files.dart';

class PopularesCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final double marginTop;
  final double marginBottom;
  final double marginLeft;
  final String textTitle;
  final String subTitle;
  final String review;
  final String rating;
  final String botonText;
  final Function onTap;

  const PopularesCard(
      {this.image,
      this.marginTop = 0.0,
      this.marginBottom = 0.0,
      this.marginLeft = 10.0,
      this.onTap,
      this.textTitle = '',
      this.subTitle = '',
      this.review = '',
      this.rating = '',
      this.botonText = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: marginLeft,
            top: marginTop,
            bottom: marginBottom,
          ),
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: image,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 7.0),
                        child: TitleText(
                            text: textTitle, // 'Andy & Cindy\'s Diner',
                            color: Colors.black,
                            fontSize: 17)),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        subTitle, // '87 Botsford Circle Apt',
                        style: (TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0)),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: amarillo,
                          size: 16.0,
                        ),
                        Text(
                          review,
                          style: (TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            rating,
                            style: (TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0)),
                          ),
                        ),
                        onTap != null
                            ? Container(
                                margin: EdgeInsets.only(left: 45.0),
                                width: 110.0,
                                height: 18.0,
                                child: ElevatedButton(
                                  onPressed: onTap,
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        StadiumBorder()),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            orange),
                                  ),
                                  child: Text(botonText,
                                      style: TextStyle(
                                          fontSize: 11.0, color: Colors.white)),
                                ),
                              )
                            : Container(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
