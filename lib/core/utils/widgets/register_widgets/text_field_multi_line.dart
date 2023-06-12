
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';


class TextFieldMultiLine extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  final readOnly;
  const TextFieldMultiLine({Key? key,required this.readOnly,required this.controller,required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding:
        EdgeInsetsDirectional.only(start: 1.w, end:1.w),
        child: Container(
          //height: 15.h,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.multiline,
            autocorrect: true,
            readOnly: readOnly,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              filled: true,
              fillColor:colorUsed,
              hintStyle:GoogleFonts.imprima(color: HexColor("#D0CDE1"), fontSize: 11.sp),
              // enabledBorder: OutlineInputBorder(
              //   borderSide:  BorderSide( color: primaryColor),
              //   borderRadius: BorderRadius.circular(15),
              // ),
              hintText: hint,
              // borderSide: const BorderSide(color: Colors.white54),
              // borderRadius: BorderRadius.circular(50.0)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.sp),
                borderSide: BorderSide(color:primaryColor),
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.sp),
                borderSide: BorderSide(color:primaryColor),
              ) ,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.sp),
                borderSide: BorderSide(color:primaryColor),
                // borderRadius: BorderRadius.circular(50.0),
              ),
              focusColor: primaryColor,
              iconColor: primaryColor,
              isDense: true,
              // Added this
              //   contentPadding: EdgeInsetsDirectional.only(start: 5.w)
            ),
            minLines: 1,
            maxLines: 5,
          ),
        ));
  }
}
