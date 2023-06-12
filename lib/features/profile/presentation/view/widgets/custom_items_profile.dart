import 'package:dental_medical_app/core/utils/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class CustomItemsProfile extends StatelessWidget {
   CustomItemsProfile({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;

    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;



   return Column(
     children: [
       (type==UserType.Patient )
           ?CustomButton(
         title: "Appointment",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.appointment,);
         },
       )
           :SizedBox(),




       (type==UserType.Patient )
           ?CustomButton(
         title: "Bills",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.patient_bills,);
         },
       )
           :SizedBox(),

       (type==UserType.Patient )
           ?CustomButton(
         title: "Photos",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.photos,);
         },
       )
           :SizedBox(),


       (type==UserType.Patient )
           ?CustomButton(
         title: "Edit",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.edit,);
         },
       )
           :SizedBox(),


       (type==UserType.Doctor || type==UserType.Assitant )
           ?CustomButton(
         title: "Patients",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.patients,);
         },
       )
           :SizedBox(),

       (type==UserType.Doctor )
           ?CustomButton(
         title: "Appointments",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.doctorAppointments,);
         },
       )
           :SizedBox(),


       (type==UserType.Patient || type==UserType.Assitant )
           ?CustomButton(
         title: "Notifications",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.notification,);
         },
       )
           :SizedBox(),

       CustomButton(
         title: "Logout",
         widthButton: widthScreen * 0.8,
         heightButton: heightScreen*0.07,
         backgroundColor: MyColor.mainDarkWhite,
         borderColor: MyColor.mainBrown,
         onTapButton: (){
           Navigator.of(context).pushNamed(RouterNames.logout,);
         },
       ),
       SizedBox(height: heightScreen*0.07,),
       (type==UserType.Assitant )
           ?CustomButton(
         title: "Create Account",
         widthButton: widthScreen * 0.9,
         marginTop: heightScreen*0.015,
         backgroundColor: MyColor.black,
         textColor: MyColor.white,
         onTapButton: (){
           print(type);
         },

       )
           :SizedBox(),


     ],
   );
  }
}
