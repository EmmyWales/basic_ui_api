
import 'package:dio/dio.dart';
import '../class/products.dart';

final dio = Dio();

Stream<List<Products>> fetchProducts() async* {
  try {
    final response = await dio.get('https://fakestoreapi.com/products');

    if (response.statusCode == 200) {
      final List<dynamic> responseData = response.data;
      final List<Products> products =
          responseData.map((item) => Products.fromJson(item)).toList();
      yield products;
    } else {
      print('Request failed with status code: ${response.statusCode}');
    }
  } catch (error) {
    print("Error: $error");
  }
}
