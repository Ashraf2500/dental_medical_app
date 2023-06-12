import 'package:dental_medical_app/core/utils/constants/strings_router.dart';
import 'package:dental_medical_app/core/utils/user_cubit/user_cubit.dart';
import 'package:dental_medical_app/core/utils/widgets/custom_success_page.dart';
import 'package:dental_medical_app/core/utils/widgets/register_widgets/female_register.dart';
import 'package:dental_medical_app/features/appointment/presentations/view/appointment_view.dart';
import 'package:dental_medical_app/features/bills/presentation/view/bills_view.dart';
import 'package:dental_medical_app/features/doctor_appointments/presentations/view/doctor_appointments_view.dart';
import 'package:dental_medical_app/features/edit/presentation/view/edit_view.dart';
import 'package:dental_medical_app/features/edit/presentation/view/widgets/edit_password.dart';
import 'package:dental_medical_app/features/logout/presentation/view/logout_view.dart';
import 'package:dental_medical_app/features/notifications/presentation/view/notifications_view.dart';
import 'package:dental_medical_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:dental_medical_app/features/options/presentation/view/options_view.dart';
import 'package:dental_medical_app/features/patient_bills/presentation/view/patient_bills_view.dart';
import 'package:dental_medical_app/features/patient_info_doctor/presentation/view/patient_ifo_doctor_view.dart';
import 'package:dental_medical_app/features/patients/presentation/view/patients_view.dart';
import 'package:dental_medical_app/features/photos/presentation/view/photos_view.dart';
import 'package:dental_medical_app/features/profile/presentation/view/profile_view.dart';
import 'package:dental_medical_app/features/register/presentation/view/register_view.dart';
import 'package:dental_medical_app/features/send_money/presentation/view/send_money_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/login/presentation/view/login_view.dart';
import '../../../features/patient_info_assistant/presentation/view/patient_info_assistant_view.dart';
import '../../../features/patient_info_doctor/presentation/view/widgets/patient_medical_history.dart';
import '../widgets/register_widgets/male_register.dart';


class AppRouter {
  UserCubit? userCubit;

  AppRouter() {
    userCubit = UserCubit();
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RouterNames.appointment:
        return MaterialPageRoute(
          builder: (_) => AppointmentView(),
        );

      case RouterNames.doctorAppointments:
        return MaterialPageRoute(
          builder: (_) => DoctorAppointmentsView(),
        );

      case RouterNames.bills:
        return MaterialPageRoute(
          builder: (_) => BillsView(),
        );

      case RouterNames.photos:
        return MaterialPageRoute(
          builder: (_) => PhotosView(),
        );

      case RouterNames.patient_bills:
        return MaterialPageRoute(
          builder: (_) => PatientBillsView(),
        );

      case RouterNames.onboarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingView(),
        );

      case RouterNames.patientInfoAssistant:
        return MaterialPageRoute(
          builder: (_) => PatentInfoAssistantView(),
        );

      case RouterNames.patientInfoDoctor:
        return MaterialPageRoute(
          builder: (_) => PatientInfoDoctorView(),
        );

      case RouterNames.options:
        return MaterialPageRoute(
          builder: (_) => OptionsView(),
        );

      case RouterNames.patients:
        return MaterialPageRoute(
          builder: (_) => PatientsView(),

        );

      case RouterNames.profile:
        return MaterialPageRoute(
          builder: (_) => ProfileView(),
        );

      case RouterNames.sendMoney:
        return MaterialPageRoute(
          builder: (_) => SendMoneyView(),


        );

      case RouterNames.login:
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );

      case RouterNames.logout:
        return MaterialPageRoute(
          builder: (_) => LogoutView(),
        );

      case RouterNames.register:
        return MaterialPageRoute(
          builder: (_) => RegisterView(),
        );

      case RouterNames.medicalHistoryMale:
        return MaterialPageRoute(
          builder: (_) => MaleRegister(),
        );

      case RouterNames.medicalHistoryFemale:
        return MaterialPageRoute(
          builder: (_) => FemaleRegisterScreen(),
        );
        case RouterNames.PatientMedicalHistory:
        return MaterialPageRoute(
          builder: (_) => PatientMedicalHistory(),
        );

      case RouterNames.register:
        return MaterialPageRoute(
          builder: (_) => RegisterView(),
        );

      case RouterNames.edit:
        return MaterialPageRoute(
          builder: (_) => EditView(),
        );

      case RouterNames.editPassword:
        return MaterialPageRoute(
          builder: (_) => EditPassword(),
        );

      case RouterNames.notification:
        return MaterialPageRoute(
          builder: (_) => NotificationsView(),
        );

      case RouterNames.success:
        return MaterialPageRoute(
            builder: (_) => CustomSuccessPage(),
        );


    }
    return null;
  }



}
