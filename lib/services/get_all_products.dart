import 'dart:convert';

import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;
class GetAllProducts{
  Future<List<ProductModel>> AllProducts()async {
    List<dynamic> data=await Api().get(url: 'https://fakestoreapi.com/products');
        List<ProductModel> productList=[];
        for(int i=0;i<data.length;i++)
        {
          productList.add(ProductModel.fromjson(data[i]));
        }
        return productList;
}
  
}