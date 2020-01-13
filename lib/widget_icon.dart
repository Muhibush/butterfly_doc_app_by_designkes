import 'package:butterfly_doc_app_by_designkes/model_side_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetIcon extends StatelessWidget {
  final ModelSideIcon modelSideIcon;

  const WidgetIcon({Key key, this.modelSideIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          modelSideIcon.icon,
          width: ScreenUtil.instance.setWidth(22),
          height: ScreenUtil.instance.setWidth(22),
          color: Color(0xFFa3a3a3),
        ),
        SizedBox(
          height: ScreenUtil.instance.setHeight(10),
        ),
        Text(
            modelSideIcon.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xFFa3a3a3),
                  fontSize: ScreenUtil.instance.setSp(16),
                  letterSpacing: ScreenUtil.instance.setSp(1),
                  fontWeight: FontWeight.w400,
                )
            )
        )
      ],
    );
  }
}
