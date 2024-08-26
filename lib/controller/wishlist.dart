
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/Products.dart';

class WishlistController extends GetxController {
  var wishlist = <Products>[].obs;

  void addToWishlist(Products item) {
    wishlist.add(item);
  }

  void removeFromWishlist(Products item) {
    wishlist.remove(item);
  }

  bool isInWishlist(Products item) {
    return wishlist.contains(item);
  }
}
