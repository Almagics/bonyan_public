import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/styles_manager.dart';
import '../resources/values_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SingleChildScrollView(
          child: Container(
            height:MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SafeArea(child: SizedBox.shrink()),
                 Container(
                   margin: const EdgeInsets.all(AppPadding.p8),
                   child: Padding(padding: EdgeInsets.all(AppPadding.p8),
                    child: Center(child: Text(AppStrings.register,style: Theme.of(context).textTheme.headlineLarge,)),




                ),
                 ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.firstName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                const Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: AppStrings.enterFirstName,
                    ),
                  ),),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.lastName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                const Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: AppStrings.enterLastName,
                    ),
                  ),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.address,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                const Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: AppStrings.phone,
                    ),
                  ),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.email,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                const Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: AppStrings.enterPhone,
                    ),
                  ),),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.email,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                 const Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: AppStrings.enterEmail,
                    ),
                  ),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.password,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                const Padding(padding: EdgeInsets.all(AppPadding.p8),
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        hintText: AppStrings.enterPassword
                    ),
                  ),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.forgetPassword,
                    style: Theme.of(context).textTheme.headlineMedium,

                  ),
                ),

                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Center(
                    child: SizedBox(width: 380,height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          //pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);

                        },


                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: const Text(AppStrings.login),

                      ),
                    ),
                  ),
                ),



                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5,width: MediaQuery.of(context).size.width * .35 ,
                      child: const Divider(
                        color: Colors.grey, // Color of the line
                        height: 10, // Height of the line
                        thickness: 1, // Thickness of the line
                      ),
                    ),
                    const SizedBox(height: 10), // Space between line and text
                    Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AppStrings.loginBy,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const SizedBox(height: 10), // Space below the text
                    SizedBox(height: 5,width: MediaQuery.of(context).size.width * .35,
                      child: const Divider(
                        color: Colors.grey, // Color of the line
                        height: 10, // Height of the line
                        thickness: 1, // Thickness of the line
                      ),
                    ),


                  ],
                ),






                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(AppSize.s8),
                      height: 50, width: MediaQuery.of(context).size.width * .45,
                      color: ColorManager.grey2,
                      child: const Center(child: Image(image: AssetImage(ImageAssets.facebook),)),
                    ),
                    Container(
                      height: 50,width: MediaQuery.of(context).size.width * .45,
                      color: ColorManager.grey2,
                      child: const Center(child: Image(image: AssetImage(ImageAssets.google),)),
                    ),
                  ],
                ),


                SizedBox(height: MediaQuery.of(context).size.height * .01,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Center(
                    child: Text(
                      AppStrings.createAccount,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Center(
                    child: SizedBox(width: 380,height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          //pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);
                          Navigator.pushReplacementNamed(context, Routes.registerRoute);
                        },


                        style: ElevatedButton.styleFrom(


                          textStyle: getRegularStyle(fontSize:FontSize.s15,color: ColorManager.grey2),
                          primary: ColorManager.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s8),




                          ),

                          //elevation: 10.0,

                        ),
                        child:  Text(AppStrings.RegisterAsClient,
                          style: TextStyle(color: ColorManager.black),

                        ),

                      ),
                    ),
                  ),
                ),
              ],
            ),





          )
      ),
    );
  }
}
