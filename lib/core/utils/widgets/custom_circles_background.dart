import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCirclesBackground extends StatelessWidget {
  const CustomCirclesBackground({Key? key,this.arrowBack}) : super(key: key);
  final bool? arrowBack ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 100.w,
          height:190.h,
          child: SvgPicture.asset(MyImage.Ellipse4),
        ),
        SizedBox(
          width: 220.w,
          height:120.h,
          child: SvgPicture.asset(MyImage.Ellipse3),
        ),
        (arrowBack == null || arrowBack! )?SizedBox(
          height: 120.h,
          width: 60.w,
          child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back,size: 32,),
          ),
        ):SizedBox(),
      ],
    );
  }
}
