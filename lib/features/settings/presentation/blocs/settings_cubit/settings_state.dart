part of 'settings_cubit.dart';

final class SettingsState extends Equatable {
  const SettingsState({required this.locale});

  final Locale locale;

  SettingsState copyWith({Locale? locale}) {
    return SettingsState(locale: locale ?? this.locale);
  }

  @override
  List<Object> get props => [locale];
}
