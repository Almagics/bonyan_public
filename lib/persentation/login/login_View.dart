

import 'package:bonyan/persentation/resources/strings_manager.dart';
import 'package:bonyan/persentation/resources/values_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/firebase_auth/firebase_auth_service.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/styles_manager.dart';
import '../widget/app_text_form_filed.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        body:  SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(padding: const EdgeInsets.all(4.0),
                  child: const Center(child: Image(image: AssetImage(ImageAssets.splashLogo2),height: 200,width: 200,)),




                ),


                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    AppStrings.email,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                 Container(padding: const EdgeInsets.all(AppPadding.p8),
                  child: AppTextFormFiled(
                    iconData: Icons.email_outlined,
                    controller: emailController,
                    hintText: AppStrings.enterEmail,
                  )),


                    const SizedBox(
                     height: 20.0,
                   ),

                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    AppStrings.password,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),

                Container(padding: const EdgeInsets.all(AppPadding.p8),
                  child: AppTextFormFiled(
                      obscureText: true,
                      suffixIcon: true,
                      iconData: Icons.lock,
                      controller: passwordController,
                      hintText: AppStrings.enterPassword,
                  ),),



                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Center(
                    child: SizedBox(width: 380,height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          //pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);
                         // Navigator.pushReplacementNamed(context, Routes.mainRoute);
                          _signin();
                        },


                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: const Text(AppStrings.login),

                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, Routes.forgetpassword);

                      },
                      child: Text(
                        AppStrings.forgetPassword,
                        style: Theme.of(context).textTheme.headlineMedium,

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
          ),
        ),
          ),
    );


  }


  void _signin() async{

    String email = emailController.text;
    //String birthday = birthDayController.text;
    String password = passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);


    Navigator.pushReplacementNamed(context, Routes.newhome);


    if(user!= null){
      print("User is successfully login");




      Navigator.pushReplacementNamed(context, Routes.mainRoute);



    }else{
      _displayDialog('كلمة المرور او اسم المستخدم خطآ.');
    }



  }

  void _displayDialog(String message) {
    showDialog(
      context: context,
      builder: ( context) {
        return AlertDialog(
          title: const Text('خطآ',
          textAlign: TextAlign.center,

          ),
          content: Text(message,
          textAlign: TextAlign.center,),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('موافق'),
            ),
          ],
        );
      },
    );
  }






}




