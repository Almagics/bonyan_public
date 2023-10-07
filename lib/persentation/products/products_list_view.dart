

import 'package:bonyan/data/products/products_model.dart';
import 'package:bonyan/persentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';


class ProductsListView extends StatefulWidget {
  const ProductsListView({super.key});

  @override
  State<ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {

  final List<ProductsModel> items = [

    ProductsModel(name: "غرفة نوم", company: "ikea", imgul: ImageAssets.product1, price: "200 RS"),
    ProductsModel(name: "غرفة طعام", company: "ikea", imgul: ImageAssets.product3, price: "300 RS"),
    ProductsModel(name: "غرفة معيشة", company: "ikea", imgul: ImageAssets.product2, price: "500 RS"),




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20,childAspectRatio: .72),
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
  final ProductsModel item;

  const CardWithImageAndText({super.key, required this.item});

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
              image: AssetImage(item.imgul),
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
                  const Icon(Icons.price_change_sharp),
                  Text(item.price.toString()),
                  const Icon(Icons.factory_rounded),
                  Text(item.company),

                ],

              ),

              Container(
                padding: EdgeInsets.all(4.0),
                child: Center(
                  child: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(3,0,3,0),
                child: Center(
                  child: SizedBox(width: double.infinity,height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        //pageController.animateToPage(getNextIndex, duration: const Duration(microseconds: AppConstants.splashDelay), curve: Curves.bounceInOut);
                       
                      },


                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: const Center(child: Icon(Icons.shopping_bag_outlined))

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