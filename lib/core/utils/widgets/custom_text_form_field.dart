import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.obscureText,
    this.suffixIcon,
     this.controller,
    this.validator,
    this.onSaved,
    this.textInputType,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.hintStyle,
    this.backGroundField,
    this.maxLines,
    this.textAlignIsCenter,
    this.borderColor,
    this.readOnly,

  });
  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  final double? marginTop;
  final double? marginBottom;
  final double? marginLeft;
  final double? marginRight;
  final TextStyle? hintStyle;
  final Color? backGroundField;
  final int? maxLines;
  final bool? textAlignIsCenter;
  final Color? borderColor;
  final bool? readOnly ;
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        top:    (marginTop!=null)? marginTop! : 0,
        bottom: (marginBottom!=null)? marginBottom!: heightScreen*0.03,
        left:   (marginLeft!=null)? marginLeft!  : 0,
        right:  (marginRight!=null)? marginRight! : 0,
      ),
      child: TextFormField(
        keyboardType: (textInputType!=null)?textInputType:TextInputType.text,
        controller: controller,
        validator: validator,
        readOnly: (readOnly != null )?readOnly! : false,
        obscureText: (obscureText != null)?obscureText!:false,
       // textAlign: (maxLines== null|| maxLines==1)?TextAlign.center:TextAlign.start,
        textAlign: (textAlignIsCenter ==null || textAlignIsCenter!)?TextAlign.center:TextAlign.start,
        maxLines: (maxLines!=null)?maxLines: 1,

        style:  MyTextStyle.style7.copyWith(color: MyColor.black,),
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            filled: true,
            fillColor: (backGroundField!=null)?backGroundField:MyColor.mainDarkWhite,
            hintStyle: (hintStyle!=null)?hintStyle:MyTextStyle.style3.copyWith(fontSize:24.sp ),
            focusedBorder: focusBorder(),
            border: border(),
            enabledBorder: border(),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: (borderColor!=null)?borderColor!:MyColor.mainBrown));
  }

  OutlineInputBorder focusBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: MyColor.mainBrown));
  }
}