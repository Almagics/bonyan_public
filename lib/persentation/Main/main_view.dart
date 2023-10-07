import 'package:bonyan/data/firebase_auth/firebase_auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../appbar_bottom/navBottomWighget.dart';
import '../orders/order_designer_view.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  int _selectedIndex = 0;
  final List<Widget> _screens = [
    MainView(),
    const OrderListDesigner(),
    const OrderListDesigner(),
    const OrderListDesigner(),
    const OrderListDesigner()


  ];





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
     // bottomNavigationBar: NavBottom(nopage: _page,),
        body: Container(
          color: ColorManager.white,
          child:  Center(
            child: Column(
              children: <Widget>[
                Text("الصفحة الرئيسية",style: Theme.of(context).textTheme.headlineLarge,),

                const Center(child: Image(image: AssetImage(ImageAssets.splashLogo2),)),


                 Row(

mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GestureDetector(
                      child: Card(

                        elevation: 4.0,
                        margin: const EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: [
                            // Image at the top of the card
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
                              child: SizedBox(width: MediaQuery.of(context).size.width * 0.4,
                                child: const Image(
                                  image: AssetImage(ImageAssets.homeStore),
                                  width: double.infinity,
                                  height: 150.0,

                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // const SizedBox(height: 10.0),
                            // Text at the bottom of the card, centered with shadow
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child:  Center(
                                child: Text(
                                    'محلات الاثاث',
                                    style: Theme.of(context).textTheme.titleLarge
                                ),
                              ),
                            ),
                          ],
                        ),


                      ),
                      onTap: (){

                        Navigator.pushReplacementNamed(context, Routes.store);
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        elevation: 4.0,
                        margin: const EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: [
                            // Image at the top of the card
                             ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
                              child: SizedBox(width: MediaQuery.of(context).size.width * 0.4,
                                child: const Image(
                                   image: AssetImage(ImageAssets.homeDesign),
                                  width: double.infinity,
                                  height: 150.0,

                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                           // const SizedBox(height: 10.0),
                            // Text at the bottom of the card, centered with shadow
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child:  Center(
                                child: Text(
                                  'المصممين',
                                  style: Theme.of(context).textTheme.titleLarge
                                ),
                              ),
                            ),
                          ],
                        ),


                ),
                      onTap: (){
                        Navigator.pushReplacementNamed(context, Routes.designers);
                      },
                    )
]),




              ],
            ),
          ),
        )

    );
  }
}
