import 'package:dental_medical_app/core/utils/constants/colors.dart';
import 'package:dental_medical_app/core/utils/constants/text_styles.dart';
import 'package:dental_medical_app/features/options/presentation/view/widgets/options_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key ,
    required this.title,
     this.heightButton ,
     this.widthButton,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.hasBorder = true,
    required this.onTapButton,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,

  }) : super(key: key);

  final String title ;
  final double? heightButton ;
  final double? widthButton ;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? borderRadius;
  final bool? hasBorder;
  final void Function()? onTapButton ;
  final double? marginTop;
  final double? marginBottom;
  final double? marginLeft;
  final double? marginRight;


  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTapButton,
      child: Container(

        width: (widthButton!=null)?widthButton: widthScreen,
        height:(heightButton!=null)?heightButton: heightScreen*0.08,
        margin: EdgeInsets.only(
            top:    (marginTop!=null)? marginTop! : 0,
            bottom: (marginBottom!=null)? marginBottom!:  heightScreen*0.03,
            left:   (marginLeft!=null)? marginLeft!  : 0,
            right:  (marginRight!=null)? marginRight! : 0,
        ),
        child: Center(child: Text("$title",style:MyTextStyle.style3.copyWith(color:(textColor!=null)?textColor:MyColor.black ),overflow: TextOverflow.visible,)),
        decoration: BoxDecoration(
          color:(backgroundColor!=null)?backgroundColor:MyColor.mainBrown,
          border: (hasBorder!=null && hasBorder==true)?
                  Border.all(color: (borderColor!= null)?
                                    borderColor!:
                                    MyColor.black,
                             width: 1,
                  ) :null,
          borderRadius: BorderRadius.all(
              (borderRadius!=null)?
              Radius.circular(borderRadius!) :
              Radius.circular(15.r)
          ),
        ),
      ),
    );
  }
}
