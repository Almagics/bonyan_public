

import 'package:bonyan/data/store/store_list/store_list_service.dart';
import 'package:bonyan/persentation/resources/assets_manager.dart';
import 'package:bonyan/persentation/resources/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class StoreView extends StatelessWidget {


  const StoreView({super.key});



  @override
  Widget build(BuildContext context) {

    final List<StoreModel> items = [
      StoreModel(imageUrl: ImageAssets.storeBarn, text: AppStrings.barn, productCount: 5, id: "barn"),
      StoreModel(imageUrl: ImageAssets.storeEbiat, text: AppStrings.ebiat, productCount: 5, id: "ebiat"),
      StoreModel(imageUrl: ImageAssets.storeSaria, text: AppStrings.saria, productCount: 5, id: "saria"),
      StoreModel(imageUrl: ImageAssets.storeIkia, text: AppStrings.ikia, productCount: 5, id: "ikia")
      // Add more items as needed
    ];



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: ColorManager.primary,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.newhome);// Navigate back to the previous screen
            },
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.darkGrey,
              statusBarBrightness: Brightness.light
          ),

          elevation: 0.0,
          title: Center(child: Text(AppStrings.storeTitle,style: Theme.of(context).textTheme.titleLarge,)),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CardWithImageAndText(item: items[index]);
          },
        ),
      ),
    );
  }
}

class CardWithImageAndText extends StatelessWidget {
  final StoreModel item;

  CardWithImageAndText({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          // Image at the top of the card, stretched to fill
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
            child: Image(
              image: AssetImage(item.imageUrl),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.0),
          // Text at the bottom of the card, centered with shadow
          Container(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                item.text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}