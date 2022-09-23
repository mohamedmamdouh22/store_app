import 'package:store_app/helpers/api.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category,
      required String id
    }) async {
    Map<String, ProductModel> data=await Api().post(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'id':id,
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
