part of 'services.dart';

class ProductServices {
  static Future<ApiReturnValue<List<Product>>> getProduct() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return ApiReturnValue(value: mockProduct, message: '');
  }
}