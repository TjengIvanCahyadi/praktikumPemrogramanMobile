import 'package:get/get.dart';

class QuantityController extends GetxController {
  var quantity = 1.obs;
  quantityIncrement() => quantity++;
  quantityDecrement() => quantity--;
}
