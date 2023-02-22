import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tip_calculator/features/homepage/domain/providers.dart';

class Tip extends ConsumerWidget {
  const Tip({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final tipPercentage = ref.watch(tipPercentageCalculatorProvider.state);
    final billAmount = ref.watch(billAmountProvider.state);

    double tipAmount = 0;
    if (billAmount.state != null) {
      tipAmount = billAmount.state! * tipPercentage.state;
    }

    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Tip amount',
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          tipAmount.ceil().toStringAsFixed(0),
          style: TextStyle(fontSize: 26.sp),
        )
      ],
    );
  }
}
