import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_pop_arrow_appbar.dart';

class EditPassword extends StatelessWidget {
  const EditPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customPopArrowAppbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start  ,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Account",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),),
                          SizedBox(height: heightScreen*0.01,),
                          Text("  hello",style:MyTextStyle.style2.copyWith(color: MyColor.black),),
                        ],
                      ),
                      Container(
                        height: heightScreen*0.16,
                        width: widthScreen*0.34,
                        child:SvgPicture.asset(MyImage.person2),
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: heightScreen*0.1,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                      hintText: " Current Password",
                      textAlignIsCenter: false,
                  ),
                  CustomTextFormField(
                      hintText: " New Password",
                      textAlignIsCenter: false,
                  ),
                  CustomTextFormField(
                      hintText: " Confirm New Password",
                      textAlignIsCenter: false,

                  ),

                  SizedBox(height: heightScreen*0.15,),
                  CustomButton(
                      title: "Save",
                      widthButton: widthScreen*0.4,
                      heightButton: heightScreen*.055,
                      hasBorder: false,
                      onTapButton: (){
                        Navigator.of(context).pushReplacementNamed(RouterNames.success);
                      }
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
