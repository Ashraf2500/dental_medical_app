
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class RadioButtonRegister extends StatelessWidget {
  int value;
  int? groupvalue;
  String title;
  Function changeFunction;
  RadioButtonRegister({required this.value,required this.groupvalue,required this.title,required this.changeFunction});
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          Theme(
            data: ThemeData(
              //here change to your color
              unselectedWidgetColor: Colors.grey,
            ),
            child: Radio<int>(
              // fillColor: MaterialStateColor.resolveWith((states) => Colors.grey),
              activeColor: primaryColor,

              value: value,
              groupValue: groupvalue,
              onChanged: (value) {
                changeFunction();
              },
            ),
          ),
          Text(title,style: TextStyle(fontSize: 10.sp,color:secondaryColor),)
        ],
      ),
    );
  }
}
