import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_app/models/transactions.dart';

abstract class Services {
  Future<List<TransactionModel>> getTransaction();
  //Future<void> updateTransaction(String image, String list, String money);
  //Future<List<TransactionModel>> TransactionList();
}

class FirebaseServices extends Services {
  @override
  Future<List<TransactionModel>> getTransaction() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('transactions').get();

    AllTransaction transactions = AllTransaction.fromsnapshot(snapshot);
    return transactions.transactions;
  }
}
