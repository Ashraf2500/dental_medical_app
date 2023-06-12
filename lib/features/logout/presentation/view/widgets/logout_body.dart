import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';

class LogoutBody extends StatefulWidget {
  const LogoutBody({Key? key}) : super(key: key);

  @override
  State<LogoutBody> createState() => _LogoutBodyState();
}

class _LogoutBodyState extends State<LogoutBody> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 2), () {
          Navigator.of(context).pushNamedAndRemoveUntil(RouterNames.onboarding, (route) => false);
       },
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColor.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(MyImage.logout),
          SizedBox(height: 20.h,),
          Text("    We hope to see you \n  again in better health.",style:MyTextStyle.style6.copyWith(color:MyColor.mainBrown),),
        ],
      ),
    );
  }
}
