import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_product_market/models/models.dart';
import 'package:flutter_product_market/services/services.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> getProduct() async {
    ApiReturnValue<List<Product>> result = await ProductServices.getProduct();

    if (result.value != null) {
      emit(ProductLoaded(result.value));
    } else {
      emit(ProductLoadingFailed(result.message));
    }
  }
}
