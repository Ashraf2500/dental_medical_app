import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/user_cubit/user_cubit.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_circles_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PhotosBody extends StatelessWidget {
  const PhotosBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;


    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (type==UserType.Doctor)?SizedBox(height: 100.h,):SizedBox(height: 200.h,),
                Center(
                    child: (type==UserType.Doctor)
                        ?Image.asset(MyImage.toothFive,height: 400.h,)
                        :Text("Your Photos",style:MyTextStyle.style5.copyWith(color: MyColor.black),),
                ),
                SizedBox(height: 50.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("Recently updated*",style:MyTextStyle.style3.copyWith(color: MyColor.black),),
                        SizedBox(height: 2.h,),
                        Container(
                          height: 100.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)=>SvgPicture.asset(MyImage.photo,width: 50.w ),
                              separatorBuilder: (context,index)=>SizedBox(width: 50.w,), itemCount: 4),
                        ),
                        SizedBox(height: 20.h,),
                        Text("  Previous updated*",style:MyTextStyle.style3.copyWith(color: MyColor.black),),
                        SizedBox(height: 1.h,),
                        Container(
                          height: 100.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)=>SvgPicture.asset(MyImage.photo,width: 50.w ),
                              separatorBuilder: (context,index)=>SizedBox(width: 50.w,), itemCount: 4),
                        ),
                      ]),
                )
              ],
            ),
          ),
          (type==UserType.Doctor)?SizedBox():CustomCirclesBackground(),
        ],
      ),
    );
  }
}
