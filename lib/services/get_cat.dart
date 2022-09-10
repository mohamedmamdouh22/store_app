import 'dart:convert';

import 'package:store_app/helpers/api.dart';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class GetCat {
  Future<List<ProductModel>> AllProducts({required String categoryName}) async {
    List<dynamic> data=await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> categoryList = [];
    for (int i = 0; i < data.length; i++) {
      categoryList.add(ProductModel.fromjson(data[i]));
    }
    return categoryList;
  }
}