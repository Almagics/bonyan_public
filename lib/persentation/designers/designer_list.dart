

import 'package:bonyan/data/designers/designers_model.dart';
import 'package:bonyan/persentation/resources/assets_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';

class DesignersListView extends StatefulWidget {
  const DesignersListView({super.key});

  @override
  State<DesignersListView> createState() => _DesignersListViewState();
}

class _DesignersListViewState extends State<DesignersListView> {

  final List<DesignerModel> items = [
    
    DesignerModel(imageUrl:ImageAssets.designersAvatar, name: "احمد محمد", reqCount: 15, id: "ahmed23", rate: 7.5),
    DesignerModel(imageUrl:ImageAssets.designersAvatar, name: "علي محمد", reqCount: 20, id: "dfs", rate: 9.5),
    DesignerModel(imageUrl:ImageAssets.designersAvatar, name: "احمد محسن", reqCount: 56, id: "dfdg", rate: 5.5),
    DesignerModel(imageUrl:ImageAssets.designersAvatar, name: "فهد القحطاني", reqCount: 12, id: "gfgdds", rate: 8.5),


    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: ColorManager.primary,),
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.mainRoute);// Navigate back to the previous screen
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.darkGrey,
            statusBarBrightness: Brightness.light
        ),

        elevation: 0.0,
        title: Center(child: Text(AppStrings.designersTitle,style: Theme.of(context).textTheme.titleLarge,)),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20,childAspectRatio: .75),
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,



        itemCount: items.length,
        itemBuilder: (context, index) {
          return CardWithImageAndText(item: items[index]);
        },
      ),
    );
  }
}


class CardWithImageAndText extends StatelessWidget {
  final DesignerModel item;

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
              //height: MediaQuery.of(context).size.height * 0.25,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.0),

          Column(

            children: [

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Icon(Icons.design_services),
                   Text(item.reqCount.toString()),
                   const Icon(Icons.star),
                   Text(item.rate.toString()),

                 ],

               ),

              Container(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),


            ],
          )
          // Text at the bottom of the card, centered with shadow

        ],
      ),
    );
  }
}

