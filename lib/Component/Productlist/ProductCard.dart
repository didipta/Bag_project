import 'package:bag_project/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;
  final VoidCallback? onAddToCart;
  const Productcard({Key? key, required this.name, required this.imageUrl, required this.price, this.onAddToCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 5,
      shadowColor: Colors.blueGrey.withOpacity(0.2),
      borderOnForeground:true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 200,

            ),
          ),
          Container( // Wrap the content in a container to set background color
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,

                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 5),
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(

                    onPressed: onAddToCart,

                    style:buttonStyle(),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_basket,size: 20), // Add your icon here
                        SizedBox(width: 8), // Add some spacing between icon and text
                        Text('Add to Cart'), // Add your text here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
