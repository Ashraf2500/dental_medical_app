import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/user_cubit/user_cubit.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';

class BillsBody extends StatelessWidget {
  const BillsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;


    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          CustomCirclesBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: heightScreen*0.2,),
                  Container(
                    width: widthScreen,
                    height: heightScreen*0.2,
                      child: Image.asset(MyImage.toothThree),
                  ),
                SizedBox(height: heightScreen*0.05,),

                Text("Patient 1 Bills",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),overflow: TextOverflow.visible,),
                SizedBox(height: heightScreen*0.04,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("the money paid*",style:MyTextStyle.style1.copyWith(fontSize: 26.sp),overflow: TextOverflow.visible,),
                    SizedBox(height: heightScreen*0.01,),
                    Text("8500 L.E",style:MyTextStyle.style4.copyWith(color: MyColor.mainBrown)),

                    SizedBox(height: heightScreen*0.05,),


                    Text("the rest of money*",style:MyTextStyle.style1.copyWith(fontSize: 26.sp),overflow: TextOverflow.visible,),
                    SizedBox(height: heightScreen*0.01,),
                    Text("54600 L.E",style:MyTextStyle.style4.copyWith(color: MyColor.mainBrown),overflow: TextOverflow.visible,),
                  ],
                ),

                SizedBox(height: heightScreen*0.1,),

                (type==UserType.Assitant)?CustomButton(
                  title: "Confirm",
                  widthButton: widthScreen*0.45,
                  heightButton: heightScreen*0.07,
                  hasBorder: false,
                  onTapButton: (){
                    Navigator.of(context).pushReplacementNamed(RouterNames.success );
                  },
                ):SizedBox(),
                SizedBox(height: heightScreen*0.05,),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
