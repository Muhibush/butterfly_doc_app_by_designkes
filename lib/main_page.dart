import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            Center(
              child: AutoSizeText(
                "Swallowtail".toUpperCase(),
                maxLines: 1,
                textAlign: TextAlign.center,
                minFontSize: 1,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil.instance.setSp(64),
                      letterSpacing: ScreenUtil.instance.setSp(8),
                      fontWeight: FontWeight.w200,
                    )
                )
              ),
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(572),
            ),
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
                      height: 2
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
            SizedBox(
              height: ScreenUtil.instance.setHeight(62),
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
//        color: Colors.white,
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
                child: graphValue("Egg",[4,5,7,8],Colors.orangeAccent)
            ),
            Expanded(
                flex: 1,
                child: Container(color: Colors.blue,)
            ),
            Expanded(
                flex: 1,
                child: Container(color: Colors.red,)
            ),
            Expanded(
                flex: 1,
                child: Container(color: Colors.green,)
            ),
          ],
        ),
      );
  }

  Widget graphValueOld(String text,List<int> listValue,Color color){
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
          width: ScreenUtil.instance.setWidth(430),
          child: ListView.builder(
            itemCount: 12,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Center(
                child: Container(
                  width: ScreenUtil.instance.setWidth(430/12),
                  height: ScreenUtil.instance.setHeight(5),
                  decoration: BoxDecoration(
                      color: listValue.contains(index+1)
                          ?color
                          :Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                            color: listValue.contains(index+1)
                                ?color
                                :Colors.transparent,
                            offset: Offset(0, 0),
                            blurRadius: 8)
                      ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget graphValue(String text,List<int> listValue,Color color){
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
          width: ScreenUtil.instance.setWidth(430),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
//              Positioned(
//                left: 0,
//                child: Container(
//                  width: ScreenUtil.instance.setWidth(420),
//                  height: ScreenUtil.instance.setHeight(5),
//                  decoration: BoxDecoration(
//                    color: color.withOpacity(0.6),
//                    boxShadow: [
//                      BoxShadow(
//                          color: color,
//                          offset: Offset(0, 0),
//                          blurRadius: 8)
//                    ],
//                  ),
//                ),
//              ),
              Positioned(
//                left: (430/12)*2,
                left: 40.0*5.5,
                width: ScreenUtil.instance.setWidth(40),
                height: ScreenUtil.instance.setHeight(5),
                bottom: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
//          child: ListView.builder(
//            itemCount: 12,
//            shrinkWrap: true,
//            scrollDirection: Axis.horizontal,
//            itemBuilder: (context,index){
//              return Center(
//                child: Container(
//                  width: ScreenUtil.instance.setWidth(430/12),
//                  height: ScreenUtil.instance.setHeight(5),
//                  decoration: BoxDecoration(
//                    color: listValue.contains(index+1)
//                        ?color.withOpacity(0.6)
//                        :Colors.transparent,
//                    boxShadow: [
//                      BoxShadow(
//                          color: listValue.contains(index+1)
//                              ?color
//                              :Colors.transparent,
//                          offset: Offset(0, 0),
//                          blurRadius: 8)
//                    ],
//                  ),
//                ),
//              );
//            },
//          ),
        ),
      ],
    );
  }
}

