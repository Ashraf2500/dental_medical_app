import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/radio_button_register.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/register_success.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/text_field_multi_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../user_cubit/user_cubit.dart';
import '../custom_button.dart';
import 'colors.dart';
import 'default_button.dart';
import 'default_text.dart';


class FemaleRegisterScreen extends StatefulWidget {
  const FemaleRegisterScreen({Key? key}) : super(key: key);

  @override
  State<FemaleRegisterScreen> createState() => _FemaleRegisterScreenState();
}

class _FemaleRegisterScreenState extends State<FemaleRegisterScreen> {
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widthScreen*0.05,).copyWith(top: heightScreen*0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                    text:
                    "Check the conditions that apply to you or any member of your immediate relatives :",
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

                DefaultText(
                    text: "Are you currently taking any medication?",
                    size: 12,
                    fontWeight: FontWeight.w900),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (MediaQuery.of(context).orientation ==
                      Orientation.landscape)
                      ? 4
                      : 2,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  childAspectRatio: 3.h/ .5.w,
                  children: List.generate(
                      takingMedication.length,
                          (index1) => RadioButtonRegister(
                          value: index1,
                          groupvalue: selectedTakingMedication,
                          title: takingMedication[index1],
                          changeFunction: () {
                            setState(() {
                              selectedTakingMedication = index1;
                            });
                          })),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldMultiLine(
                    readOnly: false,
                    controller: takeMedicationDetailsController,
                    hint: "type here"),

                SizedBox(
                  height: 30.h,
                ),
                DefaultText(
                    text: "Do you have any medication allergies?",
                    size: 12,
                    fontWeight: FontWeight.w900),
                SizedBox(
                  height: 10.h,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (MediaQuery.of(context).orientation ==
                      Orientation.landscape)
                      ? 4
                      : 3,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  childAspectRatio: 3.h/ .5.w,
                  children: List.generate(
                      medicationAllergies.length,
                          (index1) => RadioButtonRegister(
                          value: index1,
                          groupvalue: selectedmedicationAllergies,
                          title: medicationAllergies[index1],
                          changeFunction: () {
                            setState(() {
                              selectedmedicationAllergies = index1;
                            });
                          })),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: DefaultText(
                    text: "Please list them",
                    size: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFieldMultiLine(
                    readOnly: false,
                    controller: medicationAllergiesController,
                    hint: "type here"),
                SizedBox(
                  height: 30.h,
                ),
                DefaultText(
                    text: "Are you period regular?",
                    size: 12,
                    fontWeight: FontWeight.w900),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (MediaQuery.of(context).orientation ==
                          Orientation.landscape)
                      ? 4
                      : 2,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  childAspectRatio: 3.h/ .5.w,
                  children: List.generate(
                      periodRegular.length,
                      (index1) => RadioButtonRegister(
                          value: index1,
                          groupvalue: selectedPeriodRegular,
                          title: periodRegular[index1],
                          changeFunction: () {
                            setState(() {
                              selectedPeriodRegular = index1;
                            });
                          })),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 1.h,
                ),
                DefaultText(
                    text: "Are you pregnant?",
                    size: 12,
                    fontWeight: FontWeight.w900),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (MediaQuery.of(context).orientation ==
                          Orientation.landscape)
                      ? 4
                      : 2,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  childAspectRatio: 3.h/ .5.w,
                  children: List.generate(
                      pregnant.length,
                      (index1) => RadioButtonRegister(
                          value: index1,
                          groupvalue: selectedPregnant,
                          title: pregnant[index1],
                          changeFunction: () {
                            setState(() {
                              selectedPregnant = index1;
                            });
                          })),
                ),
                SizedBox(
                  height: 1.h,
                ),
                DefaultText(
                    text: "Are you breastfeeding?",
                    size: 12,
                    fontWeight: FontWeight.w900),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (MediaQuery.of(context).orientation ==
                          Orientation.landscape)
                      ? 4
                      : 2,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  childAspectRatio: 3.h/ .5.w,
                  children: List.generate(
                      breastFeeding.length,
                      (index1) => RadioButtonRegister(
                          value: index1,
                          groupvalue: selectedBreastFeeding,
                          title: breastFeeding[index1],
                          changeFunction: () {
                            setState(() {
                              selectedBreastFeeding = index1;
                            });
                          })),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DefaultText(
                  text:
                      "Note: All of your information will remain confidential between you and the Health Coach.",
                  size: 11,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: CustomButton(
                      title: "Submit",
                      widthButton: widthScreen*0.5,
                      heightButton: heightScreen*0.065,
                      onTapButton:(){
                       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterSuccess()));
                        Navigator.of(context).pushReplacementNamed(RouterNames.success);
                      }

                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
