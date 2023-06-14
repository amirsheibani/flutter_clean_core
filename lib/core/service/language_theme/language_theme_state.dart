import 'package:flutter_clean_core/utils/enumeration/theme_language_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_theme_state.freezed.dart';

@freezed
class ThemeAndLanguageState with _$ThemeAndLanguageState {
  const factory ThemeAndLanguageState.idle() = ThemeAndLanguageStateIdle;
  const factory ThemeAndLanguageState.success({ThemeType? themeType, LanguageType? languageType}) = ThemeAndLanguageStateSuccess;
  const factory ThemeAndLanguageState.failed(String message) = ThemeAndLanguageStateFailed;
}
