import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_circles_background.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/user_cubit/user_cubit.dart';

class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;

    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.08),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: widthScreen * 0.9,
                      margin: EdgeInsets.only(top: heightScreen*0.1),
                      child: Image.asset(MyImage.toothFour),
                    ),
                    Text('Login', style: MyTextStyle.style5),
                    SizedBox(
                      height: heightScreen * 0.04,
                    ),
                    CustomTextFormField(
                      hintText: " email",
                      textAlignIsCenter: false,
                      //controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'name is required';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: " password",
                      textAlignIsCenter: false,
                      //controller: passController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    SizedBox(
                      height: heightScreen * 0.06,
                    ),
                    CustomButton(
                      title: "Login",
                      widthButton: widthScreen * 0.4,
                      heightButton: heightScreen*0.07,
                      onTapButton: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, RouterNames.profile);
                        }
                      },
                    ),
                    (type == UserType.Patient)
                        ? CustomButton(
                            title: "Sign Up",
                      widthButton: widthScreen * 0.4,
                      heightButton: heightScreen*0.07,
                            onTapButton: () {
                              Navigator.pushNamed(context, RouterNames.register);
                            },
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ),
          CustomCirclesBackground(),
        ],
      ),
    );
  }
}
