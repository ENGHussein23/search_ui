import 'package:get/get.dart';
import 'package:search_ui/models/brands_model.dart';

class HomePageController extends GetxController{
  var ListStyle=0.obs;
  List<brand> ListBrands=[];
  var ListLength=0.1.obs;
  @override
  void onInit() {
    super.onInit();
    showBrands();
  }
  showBrands() async {
    ListBrands=await GetBrands().getBrands() ;
    ListLength.value=ListBrands.length.toDouble();
  }
}