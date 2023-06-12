
import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_circles_background.dart';
import 'package:dental_medical_app/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/user_cubit/user_cubit.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class OptionBody extends StatelessWidget {
  const OptionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColor.black,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: heightScreen*0.15,),
                Container(
                   height: heightScreen*0.3,
                    width: widthScreen*0.75,
                    child: Image.asset(MyImage.toothOne,fit: BoxFit.cover,),
                ),
                SizedBox(height: heightScreen*0.05,),
                Text("Options",style: MyTextStyle.style1.copyWith(color: MyColor.white),),
                SizedBox(height: heightScreen*0.05,),

                CustomButton(
                  title: "Patient",
                  heightButton:heightScreen* 0.08,
                  widthButton: widthScreen* .65,
                  marginBottom: heightScreen*0.03,
                  borderColor: MyColor.mainDarkWhite,
                  onTapButton: (){
                    context.read<UserCubit>().chooseUserType(UserType.Patient);
                    Navigator.of(context).pushNamed(RouterNames.login,);
                  },

                ),
                CustomButton(
                  title: "Doctor",
                  heightButton:heightScreen* 0.08,
                  widthButton: widthScreen* .65,
                  marginBottom: heightScreen*0.03,
                  borderColor: MyColor.mainDarkWhite,
                  onTapButton: (){
                    context.read<UserCubit>().chooseUserType(UserType.Doctor);
                    Navigator.of(context).pushNamed(RouterNames.login,);
                  },

                ),
                CustomButton(
                  title: "Assitant",
                  heightButton:heightScreen* 0.08,
                  widthButton: widthScreen* .65,
                  marginBottom: heightScreen*0.03,
                  borderColor: MyColor.mainDarkWhite,
                  onTapButton: (){
                    context.read<UserCubit>().chooseUserType(UserType.Assitant);
                    Navigator.of(context).pushNamed(RouterNames.login,);


                  },
                ),



              ],
            ),
          ),
          CustomCirclesBackground(arrowBack: false,),
        ],
      ),
    );
  }
}
