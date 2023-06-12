import 'package:dental_medical_app/core/utils/constants/app_router.dart';
import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/constants/strings_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return  MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => UserCubit()),
          ],

          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: 'grand',
                scaffoldBackgroundColor:MyColor.white,
                appBarTheme: const AppBarTheme(
                    elevation: 3,
                    color: Colors.transparent,
                    systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarIconBrightness: Brightness.dark,
                      statusBarColor: Colors.transparent,
                    )
                )
            ),
            onGenerateRoute: AppRouter().generateRoute,
            initialRoute: RouterNames.onboarding,
          ),
        );
      },
    );

  }
}
