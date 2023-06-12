
import 'package:dental_medical_app/features/login/data/models/person_model.dart';

class Patient extends Person {
  double money_paid ;
  double rest_money ;
  String appointment_day;
  String appointment_date;
  String appointment_time;
  int number_of_session;
  List <String> notifications;
  Patient(
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
      required this.money_paid,
      required this.rest_money,
      required this.appointment_day,
      required this.appointment_time,
      required this.appointment_date,
      required this.number_of_session,
      required this.notifications,
      });
}
