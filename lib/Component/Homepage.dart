import 'package:bag_project/Component/Productlist/ProductList.dart';
import 'package:bag_project/fackData/data.dart';
import 'package:bag_project/style/style.dart';
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

    return Scaffold(
      appBar: AppBar(


        title: Text("My-Commerce", style: TextSize(context),),
        backgroundColor: Colors.white,
        titleSpacing: 30,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.search,color:Colors.black, ),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Stack(

              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_basket_rounded, color: Colors.pinkAccent),
                  ),
                Positioned(
                  right: 0,
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
          ),

        ],

      ),
    body: ProductList(products: products,),
    );
  }
}
