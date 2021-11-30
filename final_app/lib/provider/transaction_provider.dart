import 'package:final_app/models/transactions.dart';
import 'package:flutter/cupertino.dart';

class TransactionProvider extends ChangeNotifier {
  List<TransactionModel> transactions = [];

  void addTransaction(TransactionModel data) {
    transactions.add(data);
    notifyListeners();
  }

  List<TransactionModel> get transationList {
    return transactions;
  }
}
