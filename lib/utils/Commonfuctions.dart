import 'package:bag_project/fackData/Products.dart';
import 'package:bag_project/fackData/data.dart';
import 'package:flutter/material.dart';



void addtocartf(Product product,context) {
  bool alreadyExists = addProducts.any((p) => p.name == product.name);
  if (!alreadyExists) {
     product.quantity=1;
    addProducts.add(product);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('The product ${product.name} has been added to your cart.'),
        duration: Duration(seconds: 2), // Adjust the duration as needed
        backgroundColor: Colors.green,

      ),
    );
  }
  else
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('The product ${product.name} already added to your cart.'),
          duration: Duration(seconds: 2),
           backgroundColor: Colors.red,

        ),
      );
    }

}
