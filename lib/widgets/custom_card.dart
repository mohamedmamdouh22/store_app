import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/pages/update_product_page.dart';
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.model,
  });
    ProductModel model;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: model);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
           // margin: EdgeInsetsDirectional.only(start: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(7, 7)),
              ],
            ),
            child: Card(
              child: Padding(
                padding:  EdgeInsets.only(left:size.width/30,right: size.width/30,top: size.height/30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${model.title}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 164, 164, 164)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${model.price}',
                            style: TextStyle(fontSize: 18),
                          ),
                          IconButton(
                            onPressed: (() {}),
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: size.height/9,
            left: size.width/20,
            child: Image.network(
              model.image,
              height: 120,
              width: 120,
            ),
          )
        ],
      ),
    );
  }
}