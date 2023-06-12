import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:dental_medical_app/features/edit/presentation/view/edit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/widgets/custom_pop_arrow_appbar.dart';
import '../../../../../core/utils/widgets/register_widgets/colors.dart';
import '../../../../../core/utils/widgets/register_widgets/default_button.dart';
import '../../../../../core/utils/widgets/register_widgets/default_text.dart';

class EditBody extends StatelessWidget {
  const EditBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen =MediaQuery.of(context).size.width;
    double heightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: customPopArrowAppbar(context),
        body:Container(
          width: widthScreen,
          padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 2.h),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Text("My Account",style: MyTextStyle.style6.copyWith(fontWeight: FontWeight.w700),overflow: TextOverflow.visible,),
                SizedBox(height: 5.h,),
                Text("Hello!",style: MyTextStyle.style2.copyWith(color: MyColor.black),),
                SizedBox(height: 40.h,),
                SvgPicture.asset(MyImage.person1),
                SizedBox(height: 80.h,),

                CustomButton(
                    title: "Edit Profile",
                    onTapButton: (){
                      Navigator.of(context).pushNamed(RouterNames.register);
                    },
                    widthButton: 320.w,
                    heightButton: 70.h,

                    hasBorder: false,
                ),
                CustomButton(
                  title: "Change Password",
                  onTapButton: (){
                    Navigator.of(context).pushNamed(RouterNames.editPassword);
                  },
                  widthButton: 320.w,
                  heightButton: 70.h,
                  hasBorder: false,
                ),



              ]
          ),
        )
    );
  }
}
