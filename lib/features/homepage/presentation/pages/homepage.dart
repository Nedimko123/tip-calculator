import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip_calculator/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/bill_form.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/tip.dart';
import 'package:tip_calculator/features/homepage/presentation/widgets/tip_slider.dart';

class TipCalculator extends ConsumerWidget {
  const TipCalculator({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(slivers: [
      const SliverAppBar(
        title: Text('Tip calculator'),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            const BillForm(),
            SizedBox(
              height: 2.h,
            ),
            const TipSlider(),
            SizedBox(
              height: 2.h,
            ),
            const Tip()
          ],
        ),
      )
    ]);
  }
}
