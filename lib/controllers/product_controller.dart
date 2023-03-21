import 'package:get/get.dart';

class CartController extends GetxController {
  var total = 0.obs;
  var ItemLength = new Map().obs;
  var ItemPrice = new Map().obs;
  List currItems = [].obs;
  late Map<String, int> freq;
  void increment(String? ind, int price, String name) {
    total.value += price;
    print(ItemLength);
    currItems.add(name);

    if (ItemLength.containsKey(name)) {
      ItemPrice[price] += 1;
      ItemLength[name] += 1;
    } else {
      ItemPrice[price] = 1;
      ItemLength[name] = 1;
    }
    print(total.value);
    print(ItemPrice);
  }

  void decrement(String? ind, int price, String name) {
    total.value -= price;
    ItemLength[name]--;
    ItemPrice[price]--;
    currItems.removeLast();
  }
}
