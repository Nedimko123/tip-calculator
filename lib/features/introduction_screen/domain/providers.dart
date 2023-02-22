import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip_calculator/features/introduction_screen/domain/functions/is_intro_shown.dart';

final isIntroShownProvider = FutureProvider<bool>((ref) => isIntroShown());
