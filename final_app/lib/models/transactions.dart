import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel {
  final String image;
  final String list;
  final String money;

  TransactionModel(this.image, this.list, this.money);

  factory TransactionModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return TransactionModel(
      json['image'] as String,
      json['list'] as String,
      json['money'] as String,
    );
  }
  factory TransactionModel.fromDs(
    Map<String, Object?> json,
  ) {
    return TransactionModel(
      json['image'] as String,
      json['list'] as String,
      json['money'] as String,
    );
  }
}

class AllTransaction {
  final List<TransactionModel> transactions;
  AllTransaction(this.transactions);

  factory AllTransaction.fromJson(List<dynamic> json) {
    List<TransactionModel> transactions;

    transactions =
        json.map((index) => TransactionModel.fromJson(index)).toList();
    return AllTransaction(transactions);
  }

  factory AllTransaction.fromsnapshot(QuerySnapshot s) {
    List<TransactionModel> transactions = s.docs.map((DocumentSnapshot ds) {
      return TransactionModel.fromJson(ds.data() as Map<String, dynamic>);
    }).toList();
    return AllTransaction(transactions);
  }
}
