import 'package:project_june2/Api%20integration/Api%20integration%20using%20http/Model/product%20model.dart';
import 'package:http/http.dart' as http;
class Httpservices{
  static Future<List<ProductModel>>fetchProducts()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){
      var data = response.body;
      return productModelFromJson(data);
    }else{
      throw Exception();
    }
    }
}