
import 'package:dental_medical_app/features/login/data/models/patient_model.dart';
import 'package:dental_medical_app/features/login/data/models/person_model.dart';

class Assistant extends Person {
  List<Patient> listOfPatient ;
  Assistant(
      {required super.name,
        required super.email,
        required super.password,
        required super.phone,
        required super.address,
        required super.birthday,
        required super.age,
        required super.gender,
        required super.occupation,
        required super.marital_status,
        required this.listOfPatient,

      });
}
