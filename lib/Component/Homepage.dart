import 'package:bag_project/Component/Productlist/ProductList.dart';
import 'package:bag_project/Router/RouterPath.dart';
import 'package:bag_project/fackData/Products.dart';
import 'package:bag_project/fackData/data.dart';
import 'package:bag_project/style/style.dart';
import 'package:bag_project/utils/Commonfuctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    void addtocart(Product product){
      addtocartf(product,context);
      setState(() {});


    }
    return Scaffold(
      appBar: AppBar(
        title: Text("My-Commerce", style: TextSize(context),),
        backgroundColor: Colors.white,
        titleSpacing: 30,
        elevation: 0,
        actions: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
          ),
          Container(
            width: 50,
            margin: EdgeInsets.only(left: 8,right:10,top: 5),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouterPath.checkout);
                  },
                  icon: Icon(Icons.shopping_basket_rounded, color: Colors.pinkAccent),
                ),
                Positioned(
                  right: 5,
                  top: 1,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Text(
                      addProducts.length.toString(), // Replace '4' with the actual item count
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )




        ],

      ),
    body: ProductList(products: products,addtocart:addtocart),
    );
  }
}
