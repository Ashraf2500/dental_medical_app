import 'package:dental_medical_app/features/appointment/presentations/view/appointment_view.dart';
import 'package:dental_medical_app/features/bills/presentation/view/bills_view.dart';
import 'package:dental_medical_app/features/login/data/models/patient_model.dart';
import 'package:dental_medical_app/features/send_money/presentation/view/send_money_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';
import '../../../../login/data/models/assistant_model.dart';
import '../../../../login/data/repo/users_repo.dart';
import '../patient_info_assistant_view.dart';

class PatientInfoAssistantBody extends StatelessWidget {
   PatientInfoAssistantBody({Key? key, this.indexPatient }) : super(key: key);
   int? indexPatient ;
   Assistant user = assistants[0];


  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    //final args = ModalRoute.of(context)!.settings.arguments as int;


    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.04),
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
                        margin: EdgeInsets.only(top: heightScreen*0.05),
                        child: SvgPicture.asset(MyImage.p1),
                      ),
                      SizedBox(height: heightScreen*0.02,),
                      Text("profile ${user.listOfPatient[indexPatient!].name} ",style:MyTextStyle.style1.copyWith(color: MyColor.mainBrown),overflow: TextOverflow.visible,),
                    ],
                  ),
                ),
                SizedBox(height: heightScreen*0.042,),

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
                        Text("Email: ",style: MyTextStyle.style7,),
                        Text("${user.listOfPatient[indexPatient!].email}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown,fontSize: 16),overflow:TextOverflow.ellipsis,),
                      ],
                    ),
                    SizedBox(height:8.h,),
                    Row(
                      children: [
                        Text("Phone: ",style: MyTextStyle.style7,),
                        Text("${user.listOfPatient[indexPatient!].phone}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown),),
                      ],
                    ),
                    SizedBox(height:8.h,),
                    Row(
                      children: [
                        Text("Number of session: ",style: MyTextStyle.style7,),
                        Text("${user.listOfPatient[indexPatient!].number_of_session}",style: MyTextStyle.style7.copyWith(color: MyColor.mainBrown),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: heightScreen*0.05,),
                SizedBox(
                  width: widthScreen,
                  child: Column(
                    children: [
                      CustomButton(
                        title: "Bills",
                        widthButton: widthScreen * 0.8,
                        backgroundColor: MyColor.mainDarkWhite,
                        borderColor: MyColor.mainBrown,
                        onTapButton: (){
                          Navigator.of(context).pushNamed(RouterNames.bills,);
                        },
                      ),
                      CustomButton(
                        title: "Appointment",
                        widthButton: widthScreen * 0.8,
                        backgroundColor: MyColor.mainDarkWhite,
                        borderColor: MyColor.mainBrown,
                        onTapButton: (){
                          Navigator.of(context).pushNamed(RouterNames.appointment,);
                        },
                      ),
                      CustomButton(
                        title: "Send message",
                        widthButton: widthScreen * 0.8,
                        backgroundColor: MyColor.mainDarkWhite,
                        borderColor: MyColor.mainBrown,
                        onTapButton: (){
                          Navigator.of(context).pushNamed(RouterNames.sendMoney,);
                        },
                      ),
                    ],
                  ),
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
