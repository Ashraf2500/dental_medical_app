import 'package:dental_medical_app/features/patient_info_assistant/presentation/view/widgets/patient_info_assistant_body.dart';
import 'package:flutter/material.dart';

class PatentInfoAssistantView extends StatelessWidget {
   PatentInfoAssistantView({Key? key, this.indexPatient}) : super(key: key);

  int? indexPatient ;
  @override
  Widget build(BuildContext context) {
    return PatientInfoAssistantBody(indexPatient: indexPatient,);
  }
}
