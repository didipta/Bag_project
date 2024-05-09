import 'package:bag_project/fackData/data.dart';
import 'package:bag_project/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addtocart extends StatefulWidget {
  const Addtocart({Key? key}) : super(key: key);

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  Widget build(BuildContext context) {
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
          children: [
            Text("My Bag"),
            Expanded(
              child: ListView.builder(
                itemCount: addProducts.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      children: [
                        Image.network(
                          addProducts[index].imageUrl,
                          fit: BoxFit.cover,
                          width: 120,
                          height: 100,

                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text("Total price")
          ],
        ),
      ),
    ) ,

    );
  }
}
