import 'package:store_app/helpers/api.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category,
    }) async {
    Map<String, ProductModel> data=await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category
      },
  
    );
    return ProductModel.fromjson(data);
  }
}
