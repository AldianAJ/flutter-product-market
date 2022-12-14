part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> product;

  const ProductLoaded(this.product);

  @override
  List<Object> get props => [product];
}

class ProductLoadingFailed extends ProductState {
  final String message;

  const ProductLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}