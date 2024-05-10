import 'package:bag_project/Component/Productlist/ProductCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../fackData/Products.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  final addtocart;
  const ProductList({Key? key, required this.products, this.addtocart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      verticalGridSpacing: 8,
      horizontalGridSpacing: 8,
        horizontalGridMargin: 20,
        verticalGridMargin: 20,
        minItemsPerRow: 1,
        minItemWidth: 210,
        children: List.generate(
        products.length,
        (index) => Productcard(
          name: products[index].name,
          imageUrl:products[index].imageUrl ,
          price:products[index].price ,
          onAddToCart:(){
            addtocart(products[index]);

          } ,
        )
      ),


    );
  }
}
