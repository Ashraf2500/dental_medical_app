import 'package:dental_medical_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemInRegister extends StatelessWidget {
final TextEditingController controller;
final String image;
final String text;
  const ItemInRegister({Key? key,required this.controller,required this.image,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image,width: heightScreen*0.05,),
        Container(
          width: widthScreen*0.68,
          height: heightScreen*0.07,
          margin: EdgeInsets.only(left: widthScreen*0.04),
          child: CustomTextFormField(
              hintText: text,
              textInputType: TextInputType.text,
               controller: controller,
               marginBottom: 0,
          ),
        ),
      ],
    );
  }
}
