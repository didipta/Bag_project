import 'package:bag_project/Component/Productlist/AddcartItem.dart';
import 'package:bag_project/fackData/Products.dart';
import 'package:bag_project/fackData/data.dart';
import 'package:bag_project/style/style.dart';
import 'package:bag_project/utils/Commonfuctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class Addtocart extends StatefulWidget {
  const Addtocart({Key? key}) : super(key: key);

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  Widget build(BuildContext context) {
    void addquaintity(Product product){

      quaintyadd(product,context);
      setState(() {});
    }
    void removequaintity(Product product){

      quaintyremove(product);
      setState(() {});
    }

    void checkouts(){
      checkout(context);
      setState(() {});
    }
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("CheckOut", style: TextSize(context),),
        backgroundColor: Colors.white,
        titleSpacing: 30,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
          ),
       ]
      ),
    body:Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 25,top:20,bottom: 15),
             child: Text("👜 My Bag",style: TextStyle(
               fontSize: 22,
               color: Colors.black87,
               fontWeight: FontWeight.bold,
             ),),
            ),
          Expanded(child:addProducts.length==0?
          Container(
            padding: EdgeInsets.only(left: 25,top:30,bottom: 15),
            child: Text("No item Add to Cart",style: TextStyle(
              fontSize: 16,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),),
          ):
          ResponsiveGridList(
            verticalGridSpacing: 10,
            horizontalGridSpacing: 10,
            horizontalGridMargin: 20,
            verticalGridMargin: 10,
            minItemsPerRow: 1,
            maxItemsPerRow: 2,
            minItemWidth: width < 650 ? width : 500,
            children: List.generate(
                addProducts.length,
                    (index) => Addcartitem(addProducts: addProducts[index],addquaintity:addquaintity,removequaintitys:removequaintity,)
            ),


          ),),
      Center(
        child: Container(
          width: width <675 ? width:600,
          padding: const EdgeInsets.only(bottom: 30,top: 10,left: 40,right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total amount:",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    // Calculate total price here
                    totalPrice().toString()+"\$", // Placeholder, replace with actual total price
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

          // Checkout button
            SizedBox(

              height: 50,
              child: ElevatedButton(


                onPressed: addProducts.length==0?null:(){
                  checkouts();
                },

                style:buttonStyle(),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle_outline,size: 20), // Add your icon here
                    SizedBox(width: 8), // Add some spacing between icon and text
                    Text('CHECK OUT'), // Add your text here
                  ],
                ),
              ),
            ),
          ],
    ),
        ),
      ),
      ]

    ),
      ),
    ) ,

    );
  }
}
