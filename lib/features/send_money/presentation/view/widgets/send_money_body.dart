import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';

class SendMoneyBody extends StatelessWidget {
   SendMoneyBody({Key? key}) : super(key: key);

  TextEditingController sendMoneyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(
        children: [
          Container(
            width: widthScreen,
            padding: EdgeInsets.symmetric(horizontal: heightScreen*0.02).copyWith(top: heightScreen*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("send message to notify the patient",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),textAlign: TextAlign.center,overflow: TextOverflow.visible,),
                SizedBox(height: heightScreen*0.05,),
                CustomTextFormField(
                  hintText: "type here..",
                  controller: sendMoneyController,
                  hintStyle: MyTextStyle.style4,
                  textAlignIsCenter: false,
                  maxLines: 5,

                ),


                SizedBox(height: heightScreen*0.1,),

                CustomButton(
                  title: "send",
                  hasBorder: false,
                  widthButton: widthScreen*0.5,
                  onTapButton: (){
                    Navigator.of(context).pushReplacementNamed(RouterNames.success );
                  },
                ),


              ],
            ),
          ),
          CustomCirclesBackground(),
        ],
      ),
    );
    }
}
