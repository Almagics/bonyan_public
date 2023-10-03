import 'package:bonyan/data/firebase_auth/firebase_auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../appbar_bottom/navBottomWighget.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final int _page = 0;
  final FirebaseAuthService _auth = FirebaseAuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.light
        ),
        elevation: 0.0,

      ),
      bottomNavigationBar: NavBottom(nopage: _page,),
        body: Container(
          color: ColorManager.white,
          child:  Center(
            child: Column(
              children: <Widget>[
                Text("الصفحة الرئيسية"),

                ElevatedButton(
                  onPressed: () async {
                  bool userstat = await  _auth.signOut();
                   if(userstat){

                     Navigator.pushReplacementNamed(context, Routes.loginRoute);
                   }
                  },


                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: const Text("تسجيل خروج"),

                ),
              ],
            ),
          ),
        )

    );
  }
}
