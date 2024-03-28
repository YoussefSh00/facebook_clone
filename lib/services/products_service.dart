import 'package:dio/dio.dart';
import 'package:facebook_clone/models/products_model.dart';

class ProductService {
  Future<List<ProductModel>> getAllProducts() async {
    var respones = await Dio().get("https://fakestoreapi.com/products");
    List responesBody = respones.data;
    var data = responesBody.map((e) => ProductModel.fromJson(e)).toList();

    return data;
  }

  
}
