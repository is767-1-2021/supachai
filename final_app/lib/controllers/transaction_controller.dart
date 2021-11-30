import 'dart:async';
import 'package:final_app/models/transactions.dart';
import 'package:final_app/services/transaction_service.dart';

class TransactionController {
  final Services service;
  List<TransactionModel> transactions = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  TransactionController(this.service);

  Future<List<TransactionModel>> fetchTransaction() async {
    onSyncController.add(true);
    transactions = await service.getTransaction();
    onSyncController.add(false);
    return transactions;
  }

/*
  Future<void> updateTransaction(
      String image, String list, String money) async {
    await service.updateTransaction(image, list, money);
  }*/
}
