import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bonyan/persentation/resources/font_manager.dart';


TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color  color){


  return TextStyle(fontSize: fontSize,
  fontFamily: FontConstants.fontFamily,
    fontWeight: fontWeight,
    color: color



  );
}
//regular
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}){


  return getTextStyle(fontSize, FontWeightManager.regular, color);
}


//medium
TextStyle getMediumStyle({double fontSize = FontSize.s13, required Color color}){


  return getTextStyle(fontSize, FontWeightManager.medium, color);
}


TextStyle getSemiBoldStyle({double fontSize = FontSize.s14, required Color color}){


  return getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

TextStyle getBoldStyle({double fontSize = FontSize.s16, required Color color}) {
  return getTextStyle(fontSize, FontWeightManager.bold, color);
}

TextStyle getSemiLightStyle({double fontSize = FontSize.s14, required Color color}){


  return getTextStyle(fontSize, FontWeightManager.light, color);
}

TextStyle getLightStyle({double fontSize = FontSize.s16, required Color color}){


  return getTextStyle(fontSize, FontWeightManager.light, color);
}

