import 'package:bonyan/data/oders/order_list_model.dart';
import 'package:bonyan/persentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';



class OrderListDesigner extends StatefulWidget {
  const OrderListDesigner({super.key});

  @override
  State<OrderListDesigner> createState() => _OrderListDesignerState();
}

class _OrderListDesignerState extends State<OrderListDesigner> {

  final List<OrderModel> items=[

    OrderModel(supject: "تصميم مكتبة", userid: "ahmed", designerid: "ali", orderNo: 43232, orderdate: "12-12-2023", stauts: "قيد الموافقة"),
    OrderModel(supject: "تصميم مكتبة", userid: "ahmed", designerid: "ali", orderNo: 43232, orderdate: "12-12-2023", stauts: "قيد الموافقة"),
    OrderModel(supject: "تصميم مكتبة", userid: "ahmed", designerid: "ali", orderNo: 43232, orderdate: "12-12-2023", stauts: "قيد الموافقة"),
    OrderModel(supject: "تصميم مكتبة", userid: "ahmed", designerid: "ali", orderNo: 43232, orderdate: "12-12-2023", stauts: "قيد الموافقة"),

  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(

          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CardWithImageAndText(item: items[index]);
            },
          ),
        ),
      ),
    );
  }
}


class CardWithImageAndText extends StatelessWidget {
  final OrderModel item;

  CardWithImageAndText({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        color: ColorManager.primary,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image at the top of the card, stretched to fill
            Column(
              children: [
                Image(image: AssetImage(ImageAssets.orderProfile),
                  height: 50,
                    width: 50,
                
                )
                
              ],
            ),

            Column(
              children: [
                Text(item.supject),
                Text(item.stauts)

              ],
            ),

             const Row(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: [
                Image(image: AssetImage(ImageAssets.orderAccept),
                  height: 24,
                  width: 24,

                ),
                Image(image: AssetImage(ImageAssets.orderReject),
                  height: 24,
                  width: 24,

                )

              ],
            ),
            
            // Text at the bottom of the card, centered with shadow
           
          ],
        ),
      ),
    );
  }
}