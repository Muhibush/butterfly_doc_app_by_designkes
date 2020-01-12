import 'package:butterfly_doc_app_by_designkes/detail_page.dart';
import 'package:butterfly_doc_app_by_designkes/model_butterfly.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetCard extends StatelessWidget {
  final ModelButterfly modelButterfly;

  const WidgetCard({Key key, this.modelButterfly}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DetailPage(
              )),
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            height: ScreenUtil.instance.setHeight(280),
            margin: EdgeInsets.only(
                left: ScreenUtil.instance.setWidth(80),
                right: ScreenUtil.instance.setWidth(80),
                bottom: ScreenUtil.instance.setHeight(90)
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 20,
                    offset: Offset(0, 15),
                  )
                ]
            ),
            child: Row(
              children: <Widget>[
                Expanded(child: Container(),flex: 1,),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            modelButterfly.name,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color(0xFFa3a3a3),
                                  fontSize: ScreenUtil.instance.setSp(30),
                                  letterSpacing: ScreenUtil.instance.setSp(-1),
                                  fontWeight: FontWeight.w700,
                                )
                            )
                        ),
                        Text(
                            modelButterfly.latin,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color(0xFFa3a3a3),
                                  fontSize: ScreenUtil.instance.setSp(20),
                                  fontWeight: FontWeight.w400,
                                )
                            )
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil.instance.setHeight(10)
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:ScreenUtil.instance.setHeight(10)),
                  child: Transform.scale(
                    scale: 1,
                    child: SizedBox(
                      height: ScreenUtil.instance.setHeight(240),
                      child: Image.asset(
                        modelButterfly.image,
                        color: Colors.black.withOpacity(0.03),
                      ),
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 1,
                  child: SizedBox(
                    height: ScreenUtil.instance.setHeight(200),
                    child: Image.asset(
                      modelButterfly.image,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: ScreenUtil.instance.setWidth(80)-ScreenUtil.instance.setHeight(20),
            child: Transform.translate(
              offset: Offset(0, ScreenUtil.instance.setHeight(-20)),
              child: Container(
                width: ScreenUtil.instance.setHeight(60),
                height: ScreenUtil.instance.setHeight(60),
                decoration: BoxDecoration(
                    color: Color(0xFFf79d00),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
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
                  'assets/icons/star.png',
                  color: Colors.white,
                  width: ScreenUtil.instance.setWidth(22),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
