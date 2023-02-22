import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip_calculator/features/settings/domain/functions/get_theme_mode.dart';

final isDarkModeProvider = FutureProvider<bool>((ref) => getThemeMode());
