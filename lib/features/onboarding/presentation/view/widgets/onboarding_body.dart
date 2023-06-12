import 'package:dental_medical_app/core/utils/constants/app_router.dart';
import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:dental_medical_app/features/options/presentation/view/options_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OnboardingBody extends StatelessWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColor.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:widthScreen*0.05, vertical: heightScreen*0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [

            Container(
              height: heightScreen*0.5,
                width: widthScreen*0.9,
                child: Image.asset(MyImage.toothTwo),
            ),
            SizedBox(height: heightScreen*0.04,),
            Text("Streamline your dental care with our app",style: MyTextStyle.style1.copyWith(color: MyColor.mainBrown,),textAlign: TextAlign.center,overflow: TextOverflow.visible,),
            SizedBox(height: heightScreen*0.04,),
            Text("Say goodbye to dental worries, start now .",style: MyTextStyle.style2,textAlign: TextAlign.center,overflow: TextOverflow.visible,),
             SizedBox(height: heightScreen*0.05,),

            CustomButton(
              title: "get started",
              heightButton:heightScreen* 0.08,
              widthButton: widthScreen * 0.72,
              borderColor: MyColor.mainDarkWhite,
              borderRadius: 30.r,
              onTapButton: (){

               Navigator.of(context).pushNamed(RouterNames.options,);

              },
            ),


          ],
        ),
      ),
    );
  }
}
