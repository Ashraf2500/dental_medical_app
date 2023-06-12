
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final int size;
   var color;
   var spacing;
   var fontWeight;
  DefaultText({Key? key,required this.text,required this.size,this.color,this.spacing,this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
    text,
      style: GoogleFonts.grandstander(color: color??Colors.black87,
          letterSpacing:spacing?? 0.5.sp,
          fontSize: size.sp,fontWeight: fontWeight??FontWeight.w500,fontStyle: FontStyle.normal),
    );
  }
}
