import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'default_text.dart';


class RegisterSuccess extends StatefulWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  State<RegisterSuccess> createState() => _RegisterSuccessState();
}

class _RegisterSuccessState extends State<RegisterSuccess> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2), () {
      //Navigator.of(context).pushReplacementNamed(RouterNames.profile);
      Navigator.of(context).pop();
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/dental 4.png"),
            SizedBox(
              height: 5.h,
            ),
            DefaultText(
              text: "Registration Success",
              spacing: 0.8,
              size: 18,
              fontWeight: FontWeight.w900,
              color: primaryColor,
            ),
            SizedBox(height: 2.h,),
            Image.asset("assets/Vector.png",width: 40.w,),
          ],
        ),
      ),
    );
  }
}
