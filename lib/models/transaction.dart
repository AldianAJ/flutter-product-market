part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int? id;
  final Product? product;
  final int? quantity;
  final int? total;
  final DateTime? dateTime;
  final TransactionStatus? status;
  final User? user;

  const Transaction(
      {this.id,
      this.product,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user});

  Transaction copyWith(
      {int? id ,
      Product? product,
      int? quantity,
      int? total,
      DateTime? dateTime,
      TransactionStatus? status,
      User? user}) {
    return Transaction(
        id: id,
        product: product,
        quantity: quantity,
        total: total,
        dateTime: dateTime,
        status: status,
        user: user);
  }

  @override
  List<Object?> get props => [id, product, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransaction = [
  Transaction(
      id: 1,
      product: mockProduct[1],
      quantity: 10,
      total: (mockProduct[1].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 2,
      product: mockProduct[2],
      quantity: 7,
      total: (mockProduct[2].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 3,
      product: mockProduct[3],
      quantity: 5,
      total: (mockProduct[3].price * 5 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser)
];
