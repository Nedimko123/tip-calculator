import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tip_calculator/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tip_calculator/features/homepage/domain/functions/reset_data.dart';
import 'package:tip_calculator/features/homepage/domain/functions/save_to_db.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/amount_of_people.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/bill_form.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/split_bill_amount.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/tip.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/tip_slider.dart';

class TipCalculator extends ConsumerWidget {
  const TipCalculator({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.payment),
            onPressed: () async => await saveData(ref)),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                const BillForm(),
                SizedBox(
                  height: 2.h,
                ),
                const TipSlider(),
                SizedBox(
                  height: 2.h,
                ),
                const AmountOfPeopleSlider(),
                SizedBox(
                  height: 2.h,
                ),
                const Tip(),
                const SplitBill(),
              ],
            ),
          )
        ]);
  }
}
