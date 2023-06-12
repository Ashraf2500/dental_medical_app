import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onClick;
  var colorBorder;
  var color;
   DefaultButton({Key? key,required this.text,required this.onClick,this.colorBorder,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
onTap: (){
  onClick();
},
      child: Container(
        height: 7.5.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: colorBorder??Colors.transparent),
            color:color?? primaryColor, borderRadius: BorderRadius.circular(17.sp),
        ),
        child: Center(child: Text(text, style:
        GoogleFonts.grandstander(color: Colors.black, fontSize: 22.sp,fontWeight: FontWeight.w500),),),
      ),
    );
  }
}
