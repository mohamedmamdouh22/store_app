import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage();
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? name, desc, image;
  String? price;
  bool inAsync = false;

  @override
  Widget build(BuildContext context) {
    ProductModel model =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: inAsync,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(children: [
          CustomTextField(
              text: 'Product Name',
              onChanged: (data) {
                name = data;
              }),
          CustomTextField(
              text: 'Product Description',
              onChanged: (data) {
                desc = data;
              }),
          CustomTextField(
              text: 'Product Price',
              onChanged: (data) {
                price = data;
              }),
          CustomTextField(
              text: 'Product Image',
              onChanged: (data) {
                image = data;
              }),
          CustomButton(
            onpressed: () async{
              inAsync = true;
              setState(() {});
              try {
                await UpdateProductMethod(model);
              } catch (e) {
                print(e.toString());
              }
              inAsync = false;
              setState(() {});
            },
            text: 'Update',
          )
        ]),
      ),
    );
  }

  Future<void> UpdateProductMethod(ProductModel model)async {
    await UpdateProduct().addProduct(
      id: model.id.toString(),
      title: name == null ? model.title : name!,
      price: price == null ? model.price.toString() : price!,
      description: desc == null ? model.description : desc!,
      image: image == null ? model.image : image!,
      category: model.image,
    );
  }
}
