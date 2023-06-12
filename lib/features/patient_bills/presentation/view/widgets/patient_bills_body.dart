import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:dental_medical_app/features/login/data/repo/users_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_pop_arrow_appbar.dart';
import '../../../../login/data/models/patient_model.dart';
import '../../../../login/data/models/person_model.dart';

class PatientBillsBody extends StatelessWidget {
   PatientBillsBody({Key? key}) : super(key: key);

  var cardNumberController=TextEditingController();
  var cardNameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    Patient user = patients[0];

    return  Scaffold(
      backgroundColor: MyColor.white,
      appBar: customPopArrowAppbar(context),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text("Patient 1 Bills",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),),
                SizedBox(height: heightScreen*0.04,),

                Container(
                  width: widthScreen,
                  padding: EdgeInsets.symmetric(horizontal: widthScreen*0.08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start  ,
                    children: [

                      Text("the money paid*",style:MyTextStyle.style1.copyWith(fontSize: 26.sp),),
                      SizedBox(height: heightScreen*0.01,),
                      Text("${user.money_paid}",style:MyTextStyle.style4.copyWith(color: MyColor.mainBrown)),

                      SizedBox(height: heightScreen*0.05,),


                      Text("the rest of money*",style:MyTextStyle.style1.copyWith(fontSize: 26.sp),),
                      SizedBox(height: heightScreen*0.01,),
                      Text("${user.rest_money}",style:MyTextStyle.style4.copyWith(color: MyColor.mainBrown)),

                    ],
                  ),

                ),

                SizedBox(height: heightScreen*0.08,),

                Text("Patient 1 Bills",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),),
                SizedBox(height: heightScreen*0.04,),

                CustomTextFormField(
                    hintText: " Card Number",
                    textAlignIsCenter: false,
                    controller: cardNumberController,
                ),
                CustomTextFormField(
                    hintText: " Card Name",
                  textAlignIsCenter: false,
                    controller: cardNameController,
                ),

                SizedBox(height: heightScreen*0.05,),
                CustomButton(
                  title: "Confirm",
                  widthButton: widthScreen*0.45,
                  hasBorder: false,
                  onTapButton: (){
                    Navigator.of(context).pushReplacementNamed(RouterNames.success);
                  },
                ),
                SizedBox(height: heightScreen*0.05,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
