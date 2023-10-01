

import 'package:bonyan/persentation/resources/assets_manager.dart';
import 'package:bonyan/persentation/resources/constants_manager.dart';
import 'package:bonyan/persentation/resources/routes_manager.dart';
import 'package:bonyan/persentation/resources/strings_manager.dart';
import 'package:bonyan/persentation/resources/values_manager.dart';

import 'package:flutter/material.dart';
import 'package:bonyan/persentation/resources/color_manager.dart';
import 'package:flutter/services.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderDate();
  final PageController _pageController = PageController();
  late int _currentIndex = 0;


  List<SliderObject> _getSliderDate() =>
      [

        SliderObject(AppStrings.slideTitle1, AppStrings.slidSubTitle1,
            ImageAssets.sliderImg1),
        SliderObject(AppStrings.slideTitle2, AppStrings.slideSubTitle2,
            ImageAssets.sliderImg2),
        SliderObject(AppStrings.slideTitle3, AppStrings.slideSubTitle3,
            ImageAssets.sliderImg3),



      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: ColorManager.white,
        appBar: AppBar(

          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.primary,
              statusBarBrightness: Brightness.light
          ),
          elevation: 0.0,

        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: _list.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },

            itemBuilder: (context, index) {
              return OnBoardingPage(sliderObject: _list[index], pageController:_pageController, getNextIndex: _getNextIndex());
            }),


        bottomSheet: Container(
          color: ColorManager.white,
          height: AppSize.s100,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {

                      Navigator.pushReplacementNamed(context, Routes.loginRoute);
                    }

                    ,
                    child: const Text(
                      AppStrings.skip, textAlign: TextAlign.end,)
                ),
              ),

              //widget indicator

              _getBottomSheetWiget(),

            ],

          ),
        )


    );
  }

  Widget _getBottomSheetWiget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: const SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: Icon(
                  Icons.arrow_circle_left,
                  color: Colors.blue,
                  size: AppSize.s20,
                  semanticLabel: 'السابق',
                ),
              ),
              onTap: (){

                _pageController.animateToPage(_getPerviousIndex(), duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);
    },)


        ),


        Row(
          children: [
            for(int i = 0; i < _list.length; i++)
               Padding(padding: const EdgeInsets.all(AppPadding.p8),
                child: _getProperCircle(i),

              )

          ],

        ),


        Padding(padding: EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: const SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.blue,
                  size: AppSize.s20,
                  semanticLabel: 'التالي',
                ),
              ),
    onTap: (){

    _pageController.animateToPage(_getNextIndex(), duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);
    }
            )


        ),
      ],

    );
  }

  int _getPerviousIndex() {
 int previousIndex = _currentIndex --;
 if(previousIndex == -1){

   previousIndex = _list.length - 1;
 }
return previousIndex;
  }


int _getNextIndex() {
  int nextIndex = _currentIndex ++;
  if(nextIndex == _list.length){

    nextIndex = 0;
  }
  return nextIndex;
}


  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return const Image(image: AssetImage(ImageAssets.hollowCircle));
    } else {
      return const Image(image: AssetImage(ImageAssets.soldCircle));
    }
  }
}


class OnBoardingPage extends StatelessWidget {
  final SliderObject sliderObject;
  final PageController pageController;
  final int getNextIndex;
    OnBoardingPage({super.key,  required this.sliderObject, required this.pageController, required this.getNextIndex});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [


        Stack(children:[

          Container(
            color: ColorManager.primary,
            height: MediaQuery.of(context).size.height / 2,
            child: Positioned(
                top: -10.0,
                left: 50.0, // Position from the left
                right: 50.0,

                child: Center(
                  child: Image(image: AssetImage(sliderObject.img),height: 300,width: 300,

            ),
                )),
          ),

          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .45,
                right: MediaQuery.of(context).size.height * .05,
                left: MediaQuery.of(context).size.height * .05),
            //width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .4,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              children: [




                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Text(
                    sliderObject.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge,

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Text(
                    AppStrings.appNameTxt,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Text(
                    sliderObject.subtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,

                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: SizedBox(width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);

                      },

                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: const Text(AppStrings.continuation),
                    ),
                  ),
                ),

              ],
            ),
          ),


        ]),























        const SizedBox(height: AppSize.s60,)




      ],

    );
  }
}



class SliderObject{
   String title;
   String subtitle;
   String img;

  SliderObject(this.title,this.subtitle,this.img);



}
