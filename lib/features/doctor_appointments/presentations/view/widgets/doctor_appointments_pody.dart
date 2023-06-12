import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/images.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_circles_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';

class DoctorAppointmentsBody extends StatelessWidget {
  const DoctorAppointmentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top:heightScreen*0.19 ),
            child: AnimationLimiter(
              child: ListView.builder(
                  itemCount:20,
                  itemBuilder: (context, index) =>
                      AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(seconds: 1),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: (){},
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,vertical: heightScreen*0.01),
                                  child: Container(
                                    width: widthScreen,
                                    height: heightScreen*0.12,
                                    decoration: BoxDecoration(
                                        border: Border.all(color:  Colors.black),
                                        color: MyColor.white,
                                        borderRadius: BorderRadius.circular(40)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            height: 80.h,
                                            width: 80.w,
                                            child: SvgPicture.asset(MyImage.person2),
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('M.A.Asardeen',style: TextStyle(color: Colors.black,fontSize: 17.sp),),
                                            Text('Sunday\n12-11-2023 ',style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                                          ],
                                        ),
                                        Container(
                                          height: 80.h,
                                          width: 80.w,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffB87853).withOpacity(.6),
                                          ),
                                          child: Center(child: Text('10:00\npm')),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
              ),
            ),
          ),
          CustomCirclesBackground(),
        ],
      ),
    );
  }
}
