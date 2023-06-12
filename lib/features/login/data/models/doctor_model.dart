
import 'package:dental_medical_app/features/login/data/models/patient_model.dart';
import 'package:dental_medical_app/features/login/data/models/person_model.dart';

class Doctor extends Person {
  List<Patient> listOfPatient ;
  List<AppointmentOfPatient> appointments ;
  Doctor(
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
        required this.appointments,

      });
}

class AppointmentOfPatient {
  String  name ;
  String  day ;
  String  date ;
  String  time ;

  AppointmentOfPatient({required this.name,required this.day, required this.date,required this.time});
}