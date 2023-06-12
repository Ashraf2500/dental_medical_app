import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/widgets/register_widgets/colors.dart';
import '../../../../../core/utils/widgets/register_widgets/default_button.dart';
import '../../../../../core/utils/widgets/register_widgets/default_text.dart';
import '../../../../../core/utils/widgets/register_widgets/female_register.dart';
import '../../../../../core/utils/widgets/register_widgets/item_gender.dart';
import '../../../../../core/utils/widgets/register_widgets/item_in_register.dart';
import '../../../../../core/utils/widgets/register_widgets/male_register.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();
    var addressController = TextEditingController();
    var birthDateController = TextEditingController();
    var genderController = TextEditingController();
    var matritalStatusController = TextEditingController();
    var occupationController = TextEditingController();
    List<String> gender = ['Male', 'Female'];
    String Gender = "Gender*";

    return  Scaffold(
      body: SafeArea(
        child: Container(
          width: widthScreen,
          padding: EdgeInsets.symmetric(horizontal: widthScreen*0.05).copyWith(top: heightScreen*0.05),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter Your information",style: MyTextStyle.style6.copyWith(fontSize: 24),),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: nameController,
                    image: "assets/id-badge 1.png",
                    text: "Name*"),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: emailController,
                    image: "assets/envelope 1.png",
                    text: "Email*"),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: phoneController,
                    image: "assets/phone-call 1.png",
                    text: "Phone*"),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: passwordController,
                    image: "assets/lock 1.png",
                    text: "Password*"),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: addressController,
                    image: "assets/address-book 1.png",
                    text: "Address*"),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: birthDateController,
                    image: "assets/calendar-days (1) 1.png",
                    text: "BirthDate*"),
                SizedBox(
                  height: 15.h,
                ),
                StatefulBuilder(
                    builder: (context, setState) => ItemInGender(

                      text: Gender,
                      list: gender,
                      onChanged: (value) {
                        setState(() {
                          Gender = value!;
                        });
                      },
                    )),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: occupationController,
                    image: "assets/user-md 1.png",
                    text: "Occupation*"),
                SizedBox(
                  height: 15.h,
                ),
                ItemInRegister(
                    controller: matritalStatusController,
                    image: "assets/rings-wedding 1.png",
                    text: "Marital Status*"),
                SizedBox(
                  height: 15.h,
                ),


                CustomButton(
                    title: "Next",
                    widthButton: widthScreen*0.5,
                    heightButton: heightScreen*0.065,
                    onTapButton: (){
                      if(Gender=="Male"){
                        Navigator.of(context).pushReplacementNamed(RouterNames.medicalHistoryMale);
                      }
                      if(Gender=="Female"){
                        Navigator.of(context).pushReplacementNamed(RouterNames.medicalHistoryFemale);

                      }
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
