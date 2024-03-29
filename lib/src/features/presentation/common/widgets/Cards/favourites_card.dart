part of widgets_files;

Widget favouritesCard({
  BuildContext context,
  ImageProvider<Object> image,
  double marginTop = 15.0,
  double marginBottom = 0.0,
  double marginLeft = 0.0,
  double marginRight = 0.0,
  double raitings = 0.0,
  Function onTap,
  String title = '',
  String subTitle = '',
  String review = '',
  String rating = '',
  String bottonText = '',
  bool isFavourite = true,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginBottom,
      left: marginLeft,
    ),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: createboxDecorationWithShadow(),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child:
              Image(width: 90.0, height: 90.0, fit: BoxFit.cover, image: image),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: TitleText(
                      text: title,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 25.0),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      size: 35.0,
                      color: isFavourite ? rosa : Colors.grey[300],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: titleText(
                    text: subTitle,
                    color: gris,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16),
                  TitleText(
                      text: review,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: TitleText(
                        text: raitings.toString(),
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 70.0), //(horizontal: 15.0),
                    width: 110.0,
                    height: 25.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        primary: orange,
                      ),
                      child: TitleText(
                        text: bottonText,
                        fontSize: 11.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
