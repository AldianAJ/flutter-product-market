part of 'services.dart';

class TransactionServices {
  static Future<ApiReturnValue<List<Transaction>>> getTransaction() async {
    await Future.delayed(const Duration(seconds: 3));

    return ApiReturnValue(value: mockTransaction, message: '');
  }

  static Future<ApiReturnValue<Transaction>> submitTransaction(
      Transaction transaction) async {
    await Future.delayed(const Duration(seconds: 2));

    // return ApiReturnValue(message: "Transaksi Gagal");
    return ApiReturnValue(
        value:
            transaction.copyWith(id: 123, status: TransactionStatus.pending), message: '');
  }
}
