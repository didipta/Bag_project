import 'package:bag_project/Router/RouterPath.dart';
import 'package:bag_project/fackData/Products.dart';
import 'package:bag_project/fackData/data.dart';
import 'package:bag_project/style/style.dart';
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

void quaintyadd(Product product,context) {
  // Check if the product already exists in the list
  var existingProduct = addProducts.firstWhere(
        (element) => element.name == product.name,

  );

  var productd = products.firstWhere(
        (element) => element.name == product.name,

  );

  if (existingProduct != null) {
    // If the product already exists, increase its quantity and price
    existingProduct.quantity++;
    existingProduct.pricetwo += productd.price;

    // Check if the total number of items in the cart is divisible by 5
    if (existingProduct.quantity==5) {
      // Show dialog when total number of items is divisible by 5
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            title: Text("Congratulations!",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w900


            ),
              textAlign: TextAlign.center,
            ),
            content: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('You have added 5 ${existingProduct.name} to your cart!',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    letterSpacing:1.5,
                    height: 2


                  ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20), // Add spacing between text and button
                  SizedBox(

                    height: 50,
                    child: ElevatedButton(

                      onPressed: (){
                        Navigator.of(context).pop();
                      },

                      style:buttonStyle(),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline,size: 20), // Add your icon here
                          SizedBox(width: 8), // Add some spacing between icon and text
                          Text('OKAY'), // Add your text here
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );


    }
  } else {
    // Handle case where product is not found
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

void checkout(context){
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(

        title: Text("Congratulations!",style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.w900


        ),
          textAlign: TextAlign.center,
        ),
        content: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Thank You For Your Purchase',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  letterSpacing:1.5,
                  height: 2


              ),
                textAlign: TextAlign.center,),
              SizedBox(height: 20), // Add spacing between text and button
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(

                    height: 50,
                    child: ElevatedButton(

                      onPressed: (){
                        addProducts.clear();

                        Navigator.pushNamed(context, RouterPath.homepath);
                      },

                      style:buttonStyle(),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline,size: 20), // Add your icon here
                          SizedBox(width: 8), // Add some spacing between icon and text
                          Text('OKAY'), // Add your text here
                        ],
                      ),
                    ),
                  ),
                  SizedBox(

                    height: 50,
                    child: ElevatedButton(

                      onPressed: (){


                        Navigator.of(context).pop();
                      },

                      style:buttonStyle(),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline,size: 20), // Add your icon here
                          SizedBox(width: 8), // Add some spacing between icon and text
                          Text('CANCEL'), // Add your text here
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );

}

