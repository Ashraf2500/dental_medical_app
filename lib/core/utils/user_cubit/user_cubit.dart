import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

enum UserType { Doctor, Assitant, Patient }

class UserCubit extends Cubit<UserState> {

  UserType? userType ;

  UserCubit() : super(UserInitial());

  void chooseUserType(UserType type){
    userType = type ;
    emit(ChooseUserState()) ;
  }


}
