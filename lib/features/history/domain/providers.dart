import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip_calculator/features/history/domain/functions/load_from_db.dart';
import 'package:tip_calculator/features/homepage/domain/models/transaction.dart';

final transactionHistoryProvider =
    FutureProvider<List<TransactionModel>>((ref) => loadData());
