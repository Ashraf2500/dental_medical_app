import 'package:dental_medical_app/features/login/data/models/doctor_model.dart';
import 'package:dental_medical_app/features/login/data/repo/users_repo.dart';
import 'package:dental_medical_app/features/patient_info_doctor/presentation/view/widgets/patient_ifo_doctor_body.dart';
import 'package:flutter/material.dart';

class PatientInfoDoctorView extends StatelessWidget {
   PatientInfoDoctorView({Key? key,this.indexPatient }) : super(key: key);
  int? indexPatient ;
  Doctor user = doctors[0];
  @override
  Widget build(BuildContext context) {
    return  PatientIfoDoctorBody(indexPatient: indexPatient!,);
  }
}
