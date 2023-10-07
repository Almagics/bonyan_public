import 'package:bonyan/persentation/resources/assets_manager.dart';
import 'package:bonyan/persentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

import '../widget/app_text_form_filed.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Center(child: Image(image: AssetImage(ImageAssets.contactHeader),
                  height: 100,
                    width: 100,

                )),

                Text(AppStrings.contacttitle,style: Theme.of(context).textTheme.titleLarge),


                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MemoInput(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3,0,3,0),
                  child: Center(
                    child: SizedBox(width: 350,height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          //pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);

                        },


                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: const Text("ارسال"),

                      ),
                    ),
                  ),
                ),
                Text("يمكنك تقديم الشكوى عبر قنوات التواصل التالية:",style: Theme.of(context).textTheme.titleLarge),

                Text("رقم هاتف: ",style: Theme.of(context).textTheme.titleLarge),
                Text("92003060",style: Theme.of(context).textTheme.titleLarge),


                Text("بريد الإلكتروني:",style: Theme.of(context).textTheme.titleLarge),
                Text("serivce@gmail.com",style: Theme.of(context).textTheme.titleLarge),


              ],



            ),
          ),



        ));
  }
}


class MemoInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 10, // Set the maximum lines to control the height
      decoration: InputDecoration(
        hintText: 'اكتب شكواك هنا.........',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: EdgeInsets.all(16.0), // Adjust padding as needed
      ),
    );
  }
}