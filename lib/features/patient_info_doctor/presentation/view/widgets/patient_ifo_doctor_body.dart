import 'package:dental_medical_app/features/login/data/models/doctor_model.dart';
import 'package:dental_medical_app/features/login/data/repo/users_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';

class PatientIfoDoctorBody extends StatelessWidget {
   PatientIfoDoctorBody({Key? key , this.indexPatient}) : super(key: key);

  int? indexPatient ;
  Doctor user = doctors[0];

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: heightScreen*0.16,
                          width: widthScreen*0.34,
                          margin: EdgeInsets.only(top: heightScreen*0.03),
                          child: SvgPicture.asset(MyImage.p1),
                        ),
                        SizedBox(height: heightScreen*0.02,),
                        Text("profile ${user.listOfPatient[indexPatient!].name} ",style:MyTextStyle.style1.copyWith(color: MyColor.mainBrown),overflow: TextOverflow.visible,),
                      ],
                    ),
                  ),
                  SizedBox(height: heightScreen*0.02,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Name: ",style: MyTextStyle.style7,),
                          Text("${user.listOfPatient[indexPatient!].name}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown),),
                        ],
                      ),
                      SizedBox(height:8.h,),
                      Row(
                        children: [
                          Text("Gender: ",style: MyTextStyle.style7,),
                          Text("${user.listOfPatient[indexPatient!].gender}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown),),
                        ],
                      ),
                      SizedBox(height:8.h,),
                      Row(
                        children: [
                          Text("Age: ",style: MyTextStyle.style7,),
                          Text("${user.listOfPatient[indexPatient!].age}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown),),
                        ],
                      ),
                      SizedBox(height:8.h,),
                      Row(
                        children: [
                          Text("Number of session: ",style: MyTextStyle.style7,),
                          Text("${user.listOfPatient[indexPatient!].number_of_session}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown),),
                        ],
                      ),
                      SizedBox(height:40.h,),
                      Text("Diagnosis",style: MyTextStyle.style6,),
                      SizedBox(height: heightScreen*0.02,),
                      CustomTextFormField(
                        hintText: "type here..",
                        hintStyle: MyTextStyle.style4,
                        textAlignIsCenter: false,
                        borderColor: MyColor.mainBrown.withOpacity(0.5),
                        maxLines: 3,
                        marginBottom: 0,

                      ),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    width: widthScreen,
                    child: Column(
                      children: [

                        CustomButton(
                          title: "upload photo",
                          widthButton: widthScreen * 0.65,
                          backgroundColor: MyColor.mainDarkWhite,
                          borderColor: MyColor.mainBrown,
                          marginBottom: heightScreen*0.015,
                          heightButton: heightScreen*0.065,
                          onTapButton: (){ },
                        ),

                        CustomButton(
                          title: "Photos",
                          widthButton: widthScreen * 0.65,
                          backgroundColor: MyColor.mainDarkWhite,
                          borderColor: MyColor.mainBrown,
                          marginBottom: heightScreen*0.015,
                          heightButton: heightScreen*0.065,
                          onTapButton: (){
                            Navigator.of(context).pushNamed(RouterNames.photos,);
                          },
                        ),
                        CustomButton(
                          title: "Bills",
                          widthButton: widthScreen * 0.65,
                          backgroundColor: MyColor.mainDarkWhite,
                          borderColor: MyColor.mainBrown,
                          marginBottom: heightScreen*0.015,
                          heightButton: heightScreen*0.065,
                          onTapButton: (){
                            Navigator.of(context).pushNamed(RouterNames.bills,);
                          },
                        ),

                        CustomButton(
                          title: "Medical History",
                          widthButton: widthScreen * 0.65,
                          backgroundColor: MyColor.mainDarkWhite,
                          borderColor: MyColor.mainBrown,
                          marginBottom: heightScreen*0.015,
                          heightButton: heightScreen*0.065,
                          onTapButton: (){
                            Navigator.of(context).pushNamed(RouterNames.PatientMedicalHistory,);
                          },
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          CustomCirclesBackground(),
        ],
      ),
    );
  }
}
