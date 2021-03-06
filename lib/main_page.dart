import 'package:auto_size_text/auto_size_text.dart';
import 'package:butterfly_doc_app_by_designkes/fade_animation.dart';
import 'package:butterfly_doc_app_by_designkes/model_butterfly.dart';
import 'package:butterfly_doc_app_by_designkes/model_side_icon.dart';
import 'package:butterfly_doc_app_by_designkes/widget_card.dart';
import 'package:butterfly_doc_app_by_designkes/widget_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>  with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  double get maxHeight => ScreenUtil.instance.setWidth(120);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleHorizontalDragUpdate(DragUpdateDetails details) {
    _animationController.value += details.primaryDelta / maxHeight;
  }

  void _handleHorizontalDragEnd(DragEndDetails details) {
    if (_animationController.isAnimating ||_animationController.status == AnimationStatus.completed)
      return;
    final double flingVelocity =
        details.velocity.pixelsPerSecond.dx / maxHeight;
    if (flingVelocity < 0.0)
      _animationController.fling(velocity: math.min(-2.0, -flingVelocity));
    else if (flingVelocity > 0.0)
      _animationController.fling(velocity: math.max(2.0, -flingVelocity));
    else
      _animationController.fling(
          velocity: _animationController.value < 0.5 ? -2.0 : 2.0);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1635)..init(context);

    return Scaffold(
      body: ListenableProvider.value(
        value: _animationController,
        child: GestureDetector(
          onHorizontalDragUpdate: _handleHorizontalDragUpdate,
          onHorizontalDragEnd: _handleHorizontalDragEnd,
          child: Stack(
            children: <Widget>[
              SideMenu(),
              WidgetLIstButterflies(),
            ],
          ),
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  final List<ModelSideIcon> icons = [
    ModelSideIcon('Close', 'assets/icons/chevron.png'),
    ModelSideIcon('Favorites', 'assets/icons/star.png'),
    ModelSideIcon('Recent', 'assets/icons/clock.png'),
    ModelSideIcon('Discover', 'assets/icons/compass.png'),
    ModelSideIcon('On the Map', 'assets/icons/map.png'),
    ModelSideIcon('Articles', 'assets/icons/book.png'),
    ModelSideIcon('Bookmarks', 'assets/icons/bookmark.png'),
    ModelSideIcon('Statics', 'assets/icons/chart.png'),
    ModelSideIcon('Layout', 'assets/icons/layout.png'),
    ModelSideIcon('Dark Mode', 'assets/icons/moon.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: ScreenUtil.instance.setHeight(80)
      ),
      width: ScreenUtil.instance.setWidth(160),
      color: Color(0xFF1c212e),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: icons.map((icon){
          return WidgetIcon(modelSideIcon: icon,);
        }).toList(),
      ),
    );
  }
}


class WidgetLIstButterflies extends StatelessWidget {

  final List<ModelButterfly> butterflies = [
    ModelButterfly(
        name: 'Brown Argus',
        latin: 'Aricia agestis',
        image: 'assets/images/butterfly1.png'
    ),
    ModelButterfly(
        name: 'Large Copper',
        latin: 'Lycaena dispar',
        image: 'assets/images/butterfly2.png'
    ),
    ModelButterfly(
        name: 'Purple Emperor',
        latin: 'Apatura iris',
        image: 'assets/images/butterfly3.png'
    ),
    ModelButterfly(
        name: 'Swallowtail',
        latin: 'Papilionidae',
        image: 'assets/images/butterfly4.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimationController>(
      builder: (context,animation,child){
        return Transform.translate(
          offset: Offset(ScreenUtil.instance.setWidth(160*animation.value), 0),
          child: child,
        );
      },
      child: Container(
        width: ScreenUtil.instance.setWidth(750),
        color: Color(0xFFf8f8f8),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            FadeAnimation(
              delay: 1,
              fadeDirection: FadeDirection.left,
              child: Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil.instance.setHeight(30)
                ),
                height: ScreenUtil.instance.setHeight(40),
                child: AutoSizeText(
                    "BUTTERFLY".toUpperCase(),
                    maxLines: 1,
                    minFontSize: 1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil.instance.setSp(34),
                          letterSpacing: ScreenUtil.instance.setSp(9),
                          fontWeight: FontWeight.w600,
                        )
                    )
                ),
              ),
            ),
            FadeAnimation(
              delay: 2,
              fadeDirection: FadeDirection.left,
              child: Container(
                margin: EdgeInsets.only(
                    left: ScreenUtil.instance.setWidth(80),
                    right: ScreenUtil.instance.setWidth(80),
                    top: ScreenUtil.instance.setHeight(45)
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: ScreenUtil.instance.setHeight(80),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            )
                          ]
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: ScreenUtil.instance.setWidth(180),
                                right: ScreenUtil.instance.setWidth(10)
                            ),
                            child: Image.asset(
                              'assets/icons/search.png',
                              width: ScreenUtil.instance.setWidth(30),
                              color: Color(0xFFa3a3a3),
                            ),
                          ),
                          Container(
                            width: ScreenUtil.instance.setWidth(340),
                            child: AutoSizeText(
                                'Search the type of butterfly',
                                minFontSize: 1,
                                maxLines: 1,
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Color(0xFFa3a3a3),
                                      fontSize: ScreenUtil.instance.setSp(18),
                                      fontWeight: FontWeight.w400,
                                    )
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: ScreenUtil.instance.setWidth(140),
                      height: ScreenUtil.instance.setHeight(80),
                      decoration: BoxDecoration(
                          color: Color(0xFFf79d00),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFf79d00).withOpacity(0.8),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            )
                          ]
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/icons/camera.png',
                        width: ScreenUtil.instance.setWidth(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FadeAnimation(
              delay: 3,
              fadeDirection: FadeDirection.left,
              child: Column(
                children: <Widget>[
                  Container(
                    height: ScreenUtil.instance.setHeight(45),
                    margin: EdgeInsets.only(
                      top: ScreenUtil.instance.setHeight(100),
                      left: ScreenUtil.instance.setWidth(80),
                      right: ScreenUtil.instance.setWidth(80),
                    ),
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                        'List of',
                        minFontSize: 1,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFFa3a3a3),
                              height: 1,
                              fontSize: ScreenUtil.instance.setSp(43),
                              fontWeight: FontWeight.w500,
                            )
                        )
                    ),
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(55),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.instance.setWidth(80),
                    ),
                    child: AutoSizeText(
                        'butterflies',
                        minFontSize: 1,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFFa3a3a3),
                              height: 1,
                              fontSize: ScreenUtil.instance.setSp(43),
                              fontWeight: FontWeight.w800,
                            )
                        )
                    ),
                  ),
                  Container(
                    height: ScreenUtil.instance.setHeight(30),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: ScreenUtil.instance.setWidth(80),
                      right: ScreenUtil.instance.setWidth(80),
                      bottom: ScreenUtil.instance.setHeight(60)

                    ),
                    child: AutoSizeText(
                        'Listed 145 in your search',
                        minFontSize: 1,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFFa3a3a3),
                              height: 1,
                              fontSize: ScreenUtil.instance.setSp(18),
                              fontWeight: FontWeight.w500,
                            )
                        )
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: butterflies.length,
                itemBuilder: (context,index){
                  return FadeAnimation(
                    delay: 3.5+(0.5*index),
                    fadeDirection: FadeDirection.left,
                    child: WidgetCard(
                      modelButterfly: butterflies[index],
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
