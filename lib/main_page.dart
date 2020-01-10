import 'package:auto_size_text/auto_size_text.dart';
import 'package:butterfly_doc_app_by_designkes/model_graph_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1635)..init(context);

    return Scaffold(
      backgroundColor: Color(0xFF1c212e),
      body: Container(
        padding: EdgeInsets.only(
          left: ScreenUtil.instance.setWidth(80),
          right: ScreenUtil.instance.setWidth(80),
          bottom: ScreenUtil.instance.setHeight(80),
          top: ScreenUtil.instance.setHeight(133),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Documentries",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil.instance.setSp(22),
                      fontWeight: FontWeight.w400
                  )
              ),
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(4),
            ),
            Text(
              "Identify a butterfly",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil.instance.setSp(30),
                      fontWeight: FontWeight.w700
                  )
              ),
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(60),
            ),
            WidgetMainImage(),
            Container(
              height: ScreenUtil.instance.setHeight(58),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "Family",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil.instance.setSp(16),
                                    fontWeight: FontWeight.w400
                                )
                            )

                        ),
                        Text(
                            "Swallowtails",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xFFf79d00),
                                    fontSize: ScreenUtil.instance.setSp(16),
                                    fontWeight: FontWeight.w600
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 0.2,
                    color: Colors.white,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "Size",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil.instance.setSp(16),
                                    fontWeight: FontWeight.w400
                                )
                            )

                        ),
                        Text(
                            "Large",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xFFf79d00),
                                    fontSize: ScreenUtil.instance.setSp(16),
                                    fontWeight: FontWeight.w600
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 0.2,
                    color: Colors.white,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "Wing Span Range",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil.instance.setSp(16),
                                    fontWeight: FontWeight.w400
                                )
                            )

                        ),
                        Text(
                            "80-90 mm",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Color(0xFFf79d00),
                                    fontSize: ScreenUtil.instance.setSp(16),
                                    fontWeight: FontWeight.w600
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(52),
            ),
            Container(
                height: ScreenUtil.instance.setHeight(130),
                child: AutoSizeText(
                    "A large, strong-flying butterfly restricted to the Norfolk "
                        "Broads, although migrants are occasionally seen "
                        "elsewhere. This is one of our rarest and most "
                        "spectacular butterflies.",
                    minFontSize: 1,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil.instance.setSp(20),
                            fontWeight: FontWeight.w400,
                            height: ScreenUtil.instance.setHeight(4)
                        )
                    )
                )
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(32),
            ),
            Container(
                alignment: Alignment.center,
                child: AutoSizeText(
                    "LIFE CYCLE",
                    minFontSize: 1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil.instance.setSp(20),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2
                        )
                    )
                )
            ),
            Expanded(
              child: Container(),
            ),
            WidgetGraph()
          ],
        ),
      ),
    );
  }
}

class WidgetGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil.instance.setHeight(260),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: ScreenUtil.instance.setWidth(160),
                    ),
                    Container(
                      width: ScreenUtil.instance.setWidth(430),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "OCT",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil.instance.setSp(12),
                                        fontWeight: FontWeight.w400
                                    )
                                )

                              ),
                              Text(
                                  "DEC",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil.instance.setSp(12),
                                          fontWeight: FontWeight.w400
                                      )
                                  )

                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                              Container(
                                width: 1,
                                height: ScreenUtil.instance.setHeight(8),
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
                flex: 1,
                child: graphValue(
                  "Egg",
                  [
                    ModelGraphValue(4,5),
                    ModelGraphValue(8,9),
                  ],
                  Colors.orangeAccent)
            ),
            Expanded(
                flex: 1,
                child: graphValue(
                  "Caterpillar",
                  [
                    ModelGraphValue(5,6),
                    ModelGraphValue(9,10),
                  ],
                  Colors.green)
            ),
            Expanded(
                flex: 1,
                child: graphValue(
                    "Chrysallis",
                    [
                      ModelGraphValue(1,11),
                    ],
                    Colors.indigo)
            ),
            Expanded(
                flex: 1,
                child: graphValue(
                    "Adult",
                    [
                      ModelGraphValue(3,4),
                      ModelGraphValue(7,7),
                    ],
                    Colors.red)
            ),
          ],
        ),
      );
  }

  Widget graphValue(String text,List<ModelGraphValue> listModelGraphValue,Color color){
    double maxWidth = ScreenUtil.instance.setWidth(430);
    return Row(
      children: <Widget>[
        Container(
          width: ScreenUtil.instance.setWidth(160),
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil.instance.setSp(18),
                    fontWeight: FontWeight.w300
                )
            ),
          ),
        ),
        Container(
          width: maxWidth,
          child: Stack(
            alignment: Alignment.center,
            children: listModelGraphValue.map((value){
              return Positioned(
                left: maxWidth/12*value.startMonth,
                width: maxWidth/12*(value.endMonth-value.startMonth+1),
                height: ScreenUtil.instance.setHeight(3),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.instance.setWidth(5)
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: color,
                          blurRadius: 5),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        color.withOpacity(0.1),
                        color.withOpacity(0.2),
                        color,
                        color.withOpacity(0.2),
                        color.withOpacity(0.1),
                      ],
                    )
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class WidgetMainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil.instance.setHeight(90+572),
      child: Stack(
        children: <Widget>[

          SizedBox(
            height: ScreenUtil.instance.setHeight(90),
            child: Center(
              child: AutoSizeText(
                  "Swallowtail".toUpperCase(),
                  maxLines: 1,
                  minFontSize: 1,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil.instance.setSp(70),
                        letterSpacing: ScreenUtil.instance.setSp(8),
                        fontWeight: FontWeight.w200,
                      )
                  )
              ),
            ),
          ),
          Transform.scale(
            scale: 1.5,
            child: SizedBox(
              height: ScreenUtil.instance.setHeight(90+572),
              child: Image.asset(
                'images/swallowtail.png',
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


