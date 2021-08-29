import 'package:flutter/material.dart';
import 'package:wakulita_user/contants.dart';
import 'package:wakulita_user/widgets/menu.dart';
import 'package:wakulita_user/models/carouselModel.dart';

class HomeContent extends StatefulWidget {
  HomeContent();
  static const routeName = '/home';
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        width: deviceWidth,
        height: deviceHeight / 1.47,
        child: Container(
          padding: EdgeInsets.only(top: deviceHeight / 8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MenuWidget(
                    function: () => print("Noodle"),
                    image: '$imgPath/noodles.png',
                    title: "Noodle",
                  ),
                  MenuWidget(
                    function: () => print("Rice"),
                    image: '$imgPath/aneka_nasi.png',
                    title: "Rice",
                  ),
                  MenuWidget(
                    function: () => print("Satay"),
                    image: '$imgPath/sate.png',
                    title: "Satay",
                  ),
                  MenuWidget(
                    function: () => print("Pizza"),
                    image: '$imgPath/pizza.png',
                    title: "Pizza",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MenuWidget(
                    function: () => print("Bread"),
                    image: '$imgPath/cake.png',
                    title: "Bread",
                  ),
                  MenuWidget(
                    function: () => print("Soup"),
                    image: '$imgPath/soup.png',
                    title: "Soup",
                  ),
                  MenuWidget(
                    function: () => print("Diet"),
                    image: '$imgPath/salad.png',
                    title: "Diet",
                  ),
                  MenuWidget(
                    function: () => print("Seafood"),
                    image: '$imgPath/seafood.png',
                    title: "Seafood",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended for you",
                      style: TextStyle(color: colorGreyText),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                        fontSize: 11.5,
                        color: colorGreyText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    for (var dataCarousel in carouselList)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: colorBackground,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: colorGreyText.withOpacity(.2),
                              spreadRadius: .3,
                              blurRadius: 3,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        width: deviceWidth / 2.5,
                        height: deviceHeight / 4.8,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: colorBlack,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(
                                dataCarousel.image,
                                height: 100,
                                width: 160,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                // color: colorGreyText,
                                color: colorWhite,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              width: double.infinity,
                              height: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    dataCarousel.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Starts from Rp " + dataCarousel.price,
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
