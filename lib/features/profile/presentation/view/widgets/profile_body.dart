import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/features/patients/presentation/view/patients_view.dart';
import 'package:dental_medical_app/features/profile/presentation/view/widgets/custom_items_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/user_cubit/user_cubit.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';

class ProfileBody extends StatelessWidget {
   ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;


    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CustomCirclesBackground(),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.042,vertical: heightScreen*0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Hello",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),),
                        Container(
                          height: heightScreen*0.16,
                          width: widthScreen*0.34,
                          margin: EdgeInsets.only(top: heightScreen*0.05),
                          child: (type==UserType.Doctor)
                              ?SvgPicture.asset(MyImage.person2)
                              :SvgPicture.asset(MyImage.person1),
                        ),
                      ],
                    ),
                    SizedBox(height: heightScreen*0.02,),
                    Text("Welcome to your profile",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w600,fontSize: 25.sp),),
                  ],
                ),
                (type == UserType.Doctor)
                    ?SizedBox(height: heightScreen*0.1,)
                    :SizedBox(height: heightScreen*0.04,),
                (type==UserType.Patient)
                    ?Expanded(
                    child: SingleChildScrollView(
                        child: CustomItemsProfile(),
                    ),
                )
                    :Center(
                  child: CustomItemsProfile(),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
