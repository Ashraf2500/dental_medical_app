import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import 'colors.dart';

class ItemInGender extends StatelessWidget {
  final String text;
  final List<String> list;
  final String? Function(String? val)? onChanged;

  const ItemInGender(
      {Key? key,
      required this.text,
      required this.list,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Row(
        children: [
          Image.asset(
            "assets/venus-mars (1) 1.png",
            height: heightScreen*0.05,
          ),

          Container(
            width: widthScreen*0.68,
            height: heightScreen*0.075,
            margin: EdgeInsets.only(left: widthScreen*0.04),
            decoration: BoxDecoration(
              color: MyColor.mainDarkWhite,
              borderRadius: BorderRadius.circular(20.sp),
              border: Border.all(color: primaryColor),
            ),
            child: DropdownButton(
                underline: Text(" "),
                isExpanded: true,
                elevation: 10,
                iconDisabledColor: Colors.grey,
                iconEnabledColor: primaryColor,
                icon: Padding(
                  padding: EdgeInsetsDirectional.only(end: 5.w),
                  child: const Icon(Icons.arrow_circle_down_sharp),
                ),
                borderRadius: BorderRadius.circular(10),
                hint: Center(
                  child: Text(
                    text,
                    style:MyTextStyle.style7.copyWith(color: MyColor.black,),
                  ),
                ),
                items: list.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    alignment: Alignment.center,
                    child: Material(
                      elevation: 5,
                      shadowColor: Colors.grey[400],
                      child: Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 1.h),
                            child: Text(value, textAlign: TextAlign.start),
                          )),
                    ),
                  );
                }).toList(),
                onChanged: onChanged),
          ),
        ],

    );
  }
}
