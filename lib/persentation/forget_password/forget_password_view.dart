import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/styles_manager.dart';
import '../resources/values_manager.dart';
import '../widget/app_text_form_filed.dart';



class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: ColorManager.primary,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.loginRoute);// Navigate back to the previous screen
            },
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.darkGrey,
              statusBarBrightness: Brightness.light
          ),

          elevation: 0.0,
          title: Center(child: Text(AppStrings.forgetpasswordtitle,style: Theme.of(context).textTheme.titleLarge,)),
        ),

body:   Column(
crossAxisAlignment: CrossAxisAlignment.start,


  children: [

      SizedBox(height: 50,),

      Padding(

        padding: const EdgeInsets.all(8.0),
        child: Text("البريد الالكتروني",style:

          Theme.of(context).textTheme.titleLarge
          ,
        textAlign: TextAlign.right,
        ),
      ),


      Padding(padding: EdgeInsets.all(AppPadding.p8),
          child: AppTextFormFiled(

           // controller: firstNameController,
            hintText: "ادخل البريد الالكتروني",
          )
      ),
SizedBox(height: 20,),

    Padding(
      padding: const EdgeInsets.fromLTRB(3,0,3,0),
      child: Center(
        child: SizedBox(width: 380,height: 50,
          child: ElevatedButton(
            onPressed: () {
              //pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },


            style: ElevatedButton.styleFrom(


              textStyle: getRegularStyle(fontSize:FontSize.s15,color: ColorManager.grey2),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s8),




              ),

              //elevation: 10.0,

            ),
            child:  Text("استمرار",
              style: TextStyle(color: ColorManager.white),

            ),

          ),
        ),
      ),
    ),


  ],


),
      ),
    );
  }
}


