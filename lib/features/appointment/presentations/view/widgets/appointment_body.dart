import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_pop_arrow_appbar.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/user_cubit/user_cubit.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';

class AppointmentBody extends StatelessWidget {
  AppointmentBody({Key? key}) : super(key: key);
  TextEditingController appointmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;

    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(
        children: [
          Container(
            width: widthScreen,
            padding: EdgeInsets.symmetric(horizontal: widthScreen*0.07),
            margin: EdgeInsets.only(top: heightScreen*0.17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (type==UserType.Patient)
                    ?Text("Here you can book any appointment*",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),overflow: TextOverflow.visible,)
                    :Text("Appointment",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),),
                SizedBox(height: heightScreen*0.03,),
                CustomTextFormField(
                    hintText: "Enter appointment date",
                    controller: appointmentController,
                    hintStyle: MyTextStyle.style4,

                ),

                SizedBox(height: heightScreen*0.02,),
                Container(
                  width: widthScreen,
                  height: heightScreen*0.27,
                  child: Image.asset(MyImage.appointment),
                ),

                SizedBox(height: heightScreen*0.03,),

                CustomTextFormField(
                  hintText: "Tuesday. May 2, 2023",
                  controller: appointmentController,
                  hintStyle: MyTextStyle.style4.copyWith(color: MyColor.black,fontSize: 17),

                ),

                CustomButton(
                    title: "confirm",
                    hasBorder: false,
                    widthButton: widthScreen*0.52,
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
