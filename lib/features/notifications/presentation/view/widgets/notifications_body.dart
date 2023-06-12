import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:dental_medical_app/features/login/data/repo/users_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_pop_arrow_appbar.dart';
import '../../../../login/data/models/patient_model.dart';

class NotificationsBody extends StatelessWidget {
   NotificationsBody({Key? key}) : super(key: key);

  var recentelyNotificationController=TextEditingController();
  var previousNotificationController=TextEditingController();

  Patient user = patients[0];
  @override
  Widget build(BuildContext context) {
    recentelyNotificationController.text="1.${user.notifications[0]}.\n2.${user.notifications[1]}\n3.${user.notifications[2]}\n4.";
    previousNotificationController.text="1.\n2.\n3.\n4.";

    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: customPopArrowAppbar(context),
      body:SingleChildScrollView(
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
                          Text("Notifications",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),),
                          SizedBox(height: heightScreen*0.01,),
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
              SizedBox(height: heightScreen*0.06,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("  Recently Notifications",style:MyTextStyle.style2.copyWith(color: MyColor.black),overflow: TextOverflow.visible,),
                  SizedBox(height: heightScreen*0.015,),
                  CustomTextFormField(
                    hintText: "",
                    textAlignIsCenter: false,
                    controller: recentelyNotificationController,
                    maxLines: 4,
                    readOnly: true,
                  ),

                  SizedBox(height: heightScreen*0.03,),

                  Text("  Previous Notifications",style:MyTextStyle.style2.copyWith(color: MyColor.black),overflow: TextOverflow.visible,),
                  SizedBox(height: heightScreen*0.015,),
                  CustomTextFormField(
                    hintText: "",
                    textAlignIsCenter: false,
                    controller: previousNotificationController,
                    maxLines: 4,
                    readOnly: true,

                  ),

                ],
              ),


            ],
          ),
        ),
      ) ,



    );
  }
}
