import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../constants/text_styles.dart';

class CustomSuccessPage extends StatefulWidget {
   CustomSuccessPage({Key? key }) : super(key: key);

  @override
  State<CustomSuccessPage> createState() => _CustomSuccessPageState();
}

class _CustomSuccessPageState extends State<CustomSuccessPage> {

  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2), () {
      Navigator.of(context).pop();
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 300.h,
                child: Image.asset(MyImage.success),
            ),
            SizedBox(height: 80.h,),
            Text("the process Succeeded",style:MyTextStyle.style6.copyWith(color:MyColor.mainBrown),overflow: TextOverflow.visible,),
            SizedBox(height: 50.h,),
            SizedBox(
              width: 80.h,
              height: 80.h,
              child: Image.asset(MyImage.success_mark),
            ),

          ],
        ),
      ),
    );
  }
}
