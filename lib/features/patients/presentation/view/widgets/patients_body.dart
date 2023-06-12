import 'package:dental_medical_app/core/utils/user_cubit/user_cubit.dart';
import 'package:dental_medical_app/features/login/data/models/assistant_model.dart';
import 'package:dental_medical_app/features/login/data/models/doctor_model.dart';
import 'package:dental_medical_app/features/login/data/repo/users_repo.dart';
import 'package:dental_medical_app/features/patient_info_assistant/presentation/view/widgets/patient_info_assistant_body.dart';
import 'package:dental_medical_app/features/patient_info_doctor/presentation/view/patient_ifo_doctor_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/images.dart';
import '../../../../../core/utils/constants/strings_router.dart';
import '../../../../../core/utils/constants/text_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_circles_background.dart';
import '../../../../patient_info_assistant/presentation/view/patient_info_assistant_view.dart';

class PatientsBody extends StatelessWidget {
   PatientsBody({Key? key}) : super(key: key);

  Doctor user1 = doctors[0];
  Assistant user2 = assistants[0];


  @override
  Widget build(BuildContext context) {

    UserType? type = context.read<UserCubit>().userType;

    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: heightScreen*0.05,),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: heightScreen*0.16,
                    width: widthScreen*0.34,
                    child: SvgPicture.asset(MyImage.p1),
                  ),
                ),
                SizedBox(height: heightScreen*0.042,),
                Text("Patients list here",style:MyTextStyle.style1.copyWith(fontWeight:FontWeight.w700),overflow: TextOverflow.visible,),
                SizedBox(height: heightScreen*0.05,),
                  Expanded(
                  child: AnimationLimiter(
                    child: ListView.builder(
                        itemCount: (type==UserType.Doctor)?user1.listOfPatient.length:user2.listOfPatient.length,
                        itemBuilder:(context , index){
                          return  AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(seconds:1),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: CustomButton(
                                  title: (type==UserType.Doctor)?"${user1.listOfPatient[index].name}":"${user2.listOfPatient[index].name}",
                                  widthButton: widthScreen * 0.8,
                                  backgroundColor: MyColor.mainDarkWhite,
                                  borderColor: MyColor.mainBrown,
                                  onTapButton: (){
                                    (type==UserType.Doctor)?
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder:(context)=> PatientInfoDoctorView(indexPatient: index,)),
                                    ):
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder:(context)=> PatentInfoAssistantView(indexPatient: index,)),
                                    );
                                   /* Navigator.of(context).pushNamed(
                                      (type==UserType.Doctor)
                                          ?RouterNames.patientInfoDoctor
                                         :RouterNames.patientInfoAssistant,
                                      arguments: index,
                                    );*/
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                    ),
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
