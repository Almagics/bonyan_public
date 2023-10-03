import 'package:flutter/material.dart';
import 'package:bonyan/persentation/resources/color_manager.dart';
import 'package:bonyan/persentation/resources/font_manager.dart';
import 'package:bonyan/persentation/resources/styles_manager.dart';
import 'package:bonyan/persentation/resources/values_manager.dart';



ThemeData getApplicationTheme(){




  return ThemeData(

    //main color
primaryColor: ColorManager.primary,
primaryColorLight: ColorManager.lightPrimary,
primaryColorDark: ColorManager.darkPrimary,
disabledColor:  ColorManager.grey1,
splashColor: ColorManager.lightPrimary,




//cardview
  cardTheme: CardTheme(
      color: ColorManager.white,
    shadowColor: ColorManager.grey,
    elevation: AppSize.s4



  ),

//app bar

  appBarTheme: AppBarTheme(
    centerTitle:true,
    color: ColorManager.white,
    elevation: AppSize.s4,
    shadowColor: ColorManager.lightGrey,
    titleTextStyle: getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)


  ),

//button
  buttonTheme: ButtonThemeData(
    shape: const StadiumBorder(),
    disabledColor: ColorManager.grey1,
    buttonColor: ColorManager.primary,
    splashColor: ColorManager.lightPrimary,
  ),
elevatedButtonTheme: ElevatedButtonThemeData(

  style: ElevatedButton.styleFrom(
    textStyle: getRegularStyle(fontSize:FontSize.s15,color: ColorManager.white),
    primary: ColorManager.primary,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.s8),




    ),
    elevation: 10.0,
  )

),







//text theme

  textTheme: TextTheme(
    headlineLarge: getBoldStyle(color: ColorManager.black,fontSize: FontSize.s30),
    headlineMedium: getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s14),
    titleLarge: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
    bodyLarge: getRegularStyle(color: ColorManager.grey1),
    bodySmall: getRegularStyle(color: ColorManager.lightGrey),
    displayLarge:getBoldStyle(color: ColorManager.primary,fontSize: FontSize.s30),


  ),

//inout decoration
  inputDecorationTheme: InputDecorationTheme(
      //contant paddibg
    contentPadding: const EdgeInsets.all(AppPadding.p8),
  hintStyle: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
  labelStyle:   getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
    errorStyle: getRegularStyle(color: ColorManager.error),


    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
  borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
  ),


  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
  borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
  ),

errorBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
),

focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
),

  )
  );
}