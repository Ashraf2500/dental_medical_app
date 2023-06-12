import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_circles_background.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/radio_button_register.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/register_success.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/text_field_multi_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/user_cubit/user_cubit.dart';
import '../../../../../core/utils/widgets/custom_pop_arrow_appbar.dart';
import '../../../../../core/utils/widgets/register_widgets/colors.dart';
import '../../../../../core/utils/widgets/register_widgets/default_text.dart';




class PatientMedicalHistory extends StatefulWidget {
  const PatientMedicalHistory({Key? key}) : super(key: key);

  @override
  State<PatientMedicalHistory> createState() => _PatientMedicalHistoryState();
}

class _PatientMedicalHistoryState extends State<PatientMedicalHistory> {
  List<Map<String, dynamic>> valuesMap = [
    {
      'Id': 0,
      'Name': 'Cardiac disease',
      'value': true,
    },
    {
      'Id': 1,
      'Name': 'Hypertension',
      'value': true,
    },
    {
      'Id': 2,
      'Name': 'Asthma',
      'value': true,
    },
    {
      'Id': 3,
      'Name': 'Diabetes',
      'value': true,
    },
    {
      'Id': 4,
      'Name': 'Cancer',
      'value': true,
    },
    {
      'Id': 5,
      'Name': 'Other',
      'value': true,
    },
  ];
  int? selectedTakingMedication;
  int? selectedmedicationAllergies;
  int? selectedPeriodRegular;
  int? selectedPregnant;
  int? selectedBreastFeeding;
  List<String> takingMedication = ['Yes', 'No'];
  List<String> periodRegular = ['Yes', 'No'];
  List<String> breastFeeding = ['Yes', 'No'];
  List<String> pregnant = ['Yes', 'No'];
  List<String> medicationAllergies = ['Yes', 'No', 'Not Sure'];
  var medicationAllergiesController = TextEditingController();
  var takeMedicationDetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserType? type = context.read<UserCubit>().userType;

    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthScreen*0.05,).copyWith(top: heightScreen*0.18),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("Medical History",style: MyTextStyle.style5.copyWith(fontSize: 25) )),
                  SizedBox(
                    height: heightScreen*0.05,
                  ),
                  DefaultText(
                      text:
                      "1) Check the conditions that apply to you or any member of your immediate relatives :",
                      size: 12,
                      fontWeight: FontWeight.w900),
                  Container(
                      height: heightScreen*0.16,
                      child: GridView.count(
                          crossAxisCount: 2,
                          //childAspectRatio: 0.6.h / 0.015.h,
                          childAspectRatio: 3.h/ .5.w,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                              valuesMap.length,
                                  (index) => Transform.translate(
                                //scale: 1.15,
                                offset: Offset(-0, 1),

                                child: CheckboxListTile(
                                  controlAffinity:
                                  ListTileControlAffinity.leading,
                                  dense: true,
                                  contentPadding: EdgeInsets.all(0),
                                  activeColor: secondaryColor,
                                  checkColor: Colors.white,
                                  //selected: true,

                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(50.sp)),
                                  value: valuesMap[index]['value'],
                                  onChanged: (value) {
                                    setState(() {
                                      valuesMap[index]['value'] = value;
                                    });
                                  },
                                  title: DefaultText(
                                      text: valuesMap[index]['Name'],
                                      size: 11),
                                ),
                              )))),

                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultText(
                      text: "2) Are you currently taking any medication?",
                      size: 12,
                      fontWeight: FontWeight.w900),

                  SizedBox(
                    height: 20.h,
                  ),

                  DefaultText(
                      text: "\t \t  No",
                      size: 15,
                      fontWeight: FontWeight.w500),

                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultText(
                      text: "3) Do you have any medication allergies?",
                      size: 12,
                      fontWeight: FontWeight.w900),
                  SizedBox(
                    height: 20.h,
                  ),

                  DefaultText(
                      text: "\t \t  yes",
                      size: 15,
                      fontWeight: FontWeight.w500),

                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultText(
                      text: "4) Are you period regular?",
                      size: 12,
                      fontWeight: FontWeight.w900),
                  SizedBox(
                    height: 20.h,
                  ),

                  DefaultText(
                      text: "\t \t  No",
                      size: 15,
                      fontWeight: FontWeight.w500),

                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultText(
                      text: "5) Are you pregnant?",
                      size: 12,
                      fontWeight: FontWeight.w900),
                  SizedBox(
                    height: 20.h,
                  ),

                  DefaultText(
                      text: "\t \t  yes",
                      size: 15,
                      fontWeight: FontWeight.w500),

                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultText(
                      text: "6) Are you breastfeeding?",
                      size: 12,
                      fontWeight: FontWeight.w900),

                  SizedBox(
                    height: 20.h,
                  ),

                  DefaultText(
                      text: "\t \t  No",
                      size: 15,
                      fontWeight: FontWeight.w500),

                  SizedBox(
                    height: 40.h,
                  ),

                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),

                ],
              ),
            ),
          ),
          CustomCirclesBackground(),
        ],
      ),
    );
  }
}
