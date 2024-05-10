import 'package:bag_project/fackData/Products.dart';
import 'package:bag_project/fackData/data.dart';
import 'package:flutter/material.dart';



void addtocartf(Product product,context) {
  bool alreadyExists = addProducts.any((p) => p.name == product.name);
  var productd=products.firstWhere(
        (element) => element.name == product.name,

  );
  if (!alreadyExists) {
     product.quantity=1;
     product.pricetwo=productd.price;
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

double totalPrice(){
  double total = 0;
  for (var product in addProducts) {
    total += product.pricetwo;
  }
  return double.parse(total.toStringAsFixed(2));
}

void quaintyadd(Product product) {
  // Check if the product already exists in the list
  var existingProduct = addProducts.firstWhere(
        (element) => element.name == product.name,

  );
  var productd=products.firstWhere(
        (element) => element.name == product.name,

  );
  print(productd.price);

  if (existingProduct != null) {
    // If the product already exists, increase its quantity and price
    existingProduct.quantity++;
    existingProduct.pricetwo += productd.price;
    if(existingProduct.quantity==5)
      {
        print(" 5 add");
      }
  } else {

  }
}

void quaintyremove(Product product) {
  // Check if the product already exists in the list
  var existingProduct = addProducts.firstWhere(
        (element) => element.name == product.name,

  );
  var productd=products.firstWhere(
        (element) => element.name == product.name,

  );
  if (existingProduct != null) {
    // If the product already exists, increase its quantity and price
    existingProduct.quantity--;
    existingProduct.pricetwo -= productd.price;

    if(existingProduct.quantity==0)
      {
        addProducts.remove(existingProduct);
      }
  } else {

  }
}

