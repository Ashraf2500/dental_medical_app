import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';


PreferredSizeWidget? customPopArrowAppbar (BuildContext context){

  return  AppBar(
      backgroundColor:  MyColor.white,
      toolbarHeight: 60.h,
      elevation: 0.0,
      leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: MyColor.black,size: 35.sp,)));
}