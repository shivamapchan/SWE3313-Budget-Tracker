import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String expense;
  final double amount;

  Transaction({@required this.id, @required this.expense, @required this.amount});
}
