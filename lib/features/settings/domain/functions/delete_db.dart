import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tip_calculator/features/common/toast/success.dart';
import 'package:tip_calculator/features/history/domain/providers.dart';
import 'package:tip_calculator/features/homepage/data/const/shared_preferences_keys.dart';

Future<void> deleteDatabase(WidgetRef ref) async {
  await SharedPreferences.getInstance()
      .then((SharedPreferences sharedPreferences) {
    sharedPreferences.setString(sharedPreferencesTransactionKey, '[]');
  }).whenComplete(() {
    successToast('Transactions deleted');
    return ref.refresh(transactionHistoryProvider);
  });
}
