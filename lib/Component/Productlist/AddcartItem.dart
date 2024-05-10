import 'package:bag_project/fackData/Products.dart';
import 'package:bag_project/utils/Commonfuctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addcartitem extends StatelessWidget {
  final Product addProducts;
  final  addquaintity;
  final  removequaintitys;

  const Addcartitem({Key? key, required this.addProducts,required this.addquaintity,required this.removequaintitys}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      height: width >430?150:300, // Set the height of the container
      width: double.infinity, // Set the width to take up all available space
      child: Card(
        shadowColor: Colors.blueGrey.withOpacity(0.3),
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),

        ),
        child: width >430?
        Row(
          children:childen(addProducts,addquaintity,removequaintitys,width),
        )
            :
        Column(
          children:childen(addProducts,addquaintity,removequaintitys,width),
        ),
      ),
    );
  }
}



List<Widget> childen(addProducts,addquaintity,removequaintitys,width){
return  [
  ClipRRect(
    borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
    child: Image.network(
      addProducts.imageUrl,
      fit: BoxFit.cover,
      width:width >430?120: double.infinity,
      height: 150,
    ),
  ),

  // Title and other details
  Expanded(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    addProducts.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: 5),
                  // Quantity
                  Row(
                    children: [
                      Row(
                        children: [
                          Text("COLOR : ", style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey
                          ),),
                          Text(addProducts.color, style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              fontWeight: FontWeight.w900

                          ))
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text("SIZE : ", style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey
                          )),
                          Text(addProducts.size, style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              fontWeight: FontWeight.w900
                          ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {


                },
                icon: Icon(Icons.more_vert_outlined, color: Colors
                    .grey),
              ),
            ],
          ),
          SizedBox(height: 8,),
          // Add and Remove Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x20000000),
                            blurRadius: 10.0,
                            offset: Offset(0, 5),
                          )
                        ]
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.black,
                      // Optionally, set icon color
                      onPressed: () {
                        addquaintity(addProducts);

                      },
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(addProducts.quantity.toString(),
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          fontWeight: FontWeight.w900

                      )),
                  SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x20000000),
                            blurRadius: 10.0,
                            offset: Offset(0, 5),
                          )
                        ]
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove),
                      color: Colors.black,
                      // Optionally, set icon color
                      onPressed: () {
                        removequaintitys(addProducts);
                      },
                    ),
                  ),

                ],
              ),
              Text(addProducts.pricetwo.toStringAsFixed(2) + '\$',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w900
                  ))
            ],
          ),
          SizedBox(height: 2,)
        ],
      ),
    ),
  ),
];
}

