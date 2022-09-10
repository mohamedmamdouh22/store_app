import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helpers/api.dart';
class GetAllCat{
  Future<List> getAllCat() async{
    Api api=Api();
    List<dynamic> data=await api.get(url:'https://fakestoreapi.com/products/categories');
        return data;
  }
}