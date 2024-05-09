import 'dart:convert';

import 'Products.dart';

String jsonData='''
[
  {
    "name": "Classic White Shirt",
    "imageUrl": "https://i.insider.com/64cd26dc8df5080019d3052a?width=800&format=jpeg&auto=webp",
    "size": "Medium",
    "color": "White",
    "price": 29.99,
    "quantity": 10
  },
  {
    "name": "Denim Jeans",
    "imageUrl": "https://images.othoba.com/images/thumbs/0547350_mens-slim-fit-stretchable-denim-jeans-pant-deep-blue.webp",
    "size": "Large",
    "color": "Blue",
    "price": 49.99,
    "quantity": 8
  },
  {
    "name": "Floral Sundress",
    "imageUrl": "https://www.sydnestyle.com/wp-content/uploads/2020/08/Sydne-Style-wears-wayf-floral-dress-for-summer-outfit-ideas-with-flat-sandals.jpg",
    "size": "Small",
    "color": "Pink",
    "price": 39.99,
    "quantity": 12
  },
  {
    "name": "Leather Jacket",
    "imageUrl": "https://4.imimg.com/data4/KK/AB/ANDROID-31822177/product-500x500.jpeg",
    "size": "Medium",
    "color": "Black",
    "price": 99.99,
    "quantity": 5
  },
  {
    "name": "Striped Polo Shirt",
    "imageUrl": "https://masculine.com.bd/cdn/shop/files/StripedPolo-3.1_1d2bdc02-aecf-4e64-b2b7-17822dd9f896.jpg?v=1695899595",
    "size": "Large",
    "color": "Blue/White",
    "price": 24.99,
    "quantity": 15
  },
  {
    "name": "Black Skinny Jeans",
    "imageUrl": "https://club76.pk/cdn/shop/products/club76-women-skinny-black-jeans.jpg?v=1661843753&width=1445",
    "size": "Medium",
    "color": "Black",
    "price": 54.99,
    "quantity": 7
  },
  {
    "name": "Plaid Flannel Shirt",
    "imageUrl": "https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/f/e/tr:h-400,w-300,cm-pad_resize/fe26601TBH-KEVIN-GR_1.jpg?rnd=20200526195200",
    "size": "Large",
    "color": "Red/Black",
    "price": 34.99,
    "quantity": 10
  },
  {
    "name": "Linen Trousers",
    "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHBdnRlryehX_tIXHENyDUkDr0UBvuSfj9_wJTRwNJEQ&s",
    "size": "Medium",
    "color": "Beige",
    "price": 44.99,
    "quantity": 6
  },
  {
    "name": "Wool Peacoat",
    "imageUrl": "https://www.wildsouthclothing.co.nz/cdn/shop/products/MJ167Navy1_1600x.jpg?v=1636597959",
    "size": "Large",
    "color": "Navy",
    "price": 89.99,
    "quantity": 3
  },
  {
    "name": "Graphic T-shirt",
    "imageUrl": "https://i.ebayimg.com/images/g/FVkAAOSwl8hgzFH7/s-l1200.webp",
    "size": "Medium",
    "color": "Grey",
    "price": 19.99,
    "quantity": 20
  },
  {
    "name": "Corduroy Pants",
    "imageUrl": "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/535677/74/mod01/fnd/SEA/fmt/png/Downtown-Corduroy-Pants-Men",
    "size": "Small",
    "color": "Brown",
    "price": 59.99,
    "quantity": 9
  },
  {
    "name": "Velvet Blazer",
    "imageUrl": "https://5.imimg.com/data5/CY/LD/BM/SELLER-24030289/mens-velvet-blazer-500x500.jpg",
    "size": "Large",
    "color": "Maroon",
    "price": 79.99,
    "quantity": 4
  },
  {
    "name": "Knit Sweater",
    "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw4NsNGlGD6u8adh13xxNv_g1ePOXvySoQNDeIJEq8riIokYtiGU38l-APe2aNJYfNwDY&usqp=CAU",
    "size": "Medium",
    "color": "Teal",
    "price": 49.99,
    "quantity": 11
  },
  {
    "name": "Silk Blouse",
    "imageUrl": "https://gaala.com/cdn/shop/files/stretch-silk-blouse.jpg?v=1704344743&width=2667",
    "size": "Small",
    "color": "Ivory",
    "price": 69.99,
    "quantity": 8
  },
  {
    "name": "Cargo Shorts",
    "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFP-fQElMXzq07GfuuFg_3Gu72A0CIaWfyEvIuSifuSA&s",
    "size": "Medium",
    "color": "Olive",
    "price": 29.99,
    "quantity": 14
  },
  {
    "name": "Tweed Jacket",
    "imageUrl": "https://www.alamodelabel.in/cdn/shop/files/WhatsAppImage2023-10-26at1.46.37PM.jpg?v=1699084576",
    "size": "Large",
    "color": "Brown",
    "price": 109.99,
    "quantity": 6
  },
  {
    "name": "Sequin Dress",
    "imageUrl": "https://dlsb.co.uk/cdn/shop/products/So-Sensational---Pink-Blue-Sequin-Long-Sleeve-Mini-Dress.jpg?v=1669365972",
    "size": "Small",
    "color": "Silver",
    "price": 79.99,
    "quantity": 3
  },
  {
    "name": "Chambray Shirt",
    "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-WDIvhfKzQ9jeZGrPjgDDcVE66N7_olFGyDWlOrPMxg&s",
    "size": "Medium",
    "color": "Blue",
    "price": 39.99,
    "quantity": 10
  },
  {
    "name": "Puffer Vest",
    "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0IikIBEwB20Xe-jFiF3YVaJ-lypnFaQNvS7VFAstng&s",
    "size": "Large",
    "color": "Red",
    "price": 49.99,
    "quantity": 7
  },
  {
    "name": "Pleated Skirt",
    "imageUrl": "https://colortheory.in/cdn/shop/products/True-Color1055_1000x_crop_center.jpg?v=1627452524",
    "size": "Small",
    "color": "Black",
    "price": 34.99,
    "quantity": 9
  }
]
''';

List<dynamic> jsonList = jsonDecode(jsonData);
List<Product> products = jsonList.map((json) => Product.fromJson(json)).toList();
List<Product> addProducts =[];