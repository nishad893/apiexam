import 'package:http/http.dart' as http;


import '../model/Products.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Products>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return sampleFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}