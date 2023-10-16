import 'package:get/get.dart';
import 'package:project_june2/Api%20integration/Api%20integration%20using%20http/service/Api%20service.dart';

class ProductManger extends GetxController{
  var isLoading= true.obs;
  var productlist=[].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async{
    try{
      isLoading(true);
      var products= await Httpservices.fetchProducts();
      if(products !=null){
        productlist.value=products;
      }
    }catch(e){
      print(e);

    }finally{
      isLoading(false);
    }
  }

}