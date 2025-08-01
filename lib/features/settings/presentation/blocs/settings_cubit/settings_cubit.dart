import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/app/app.dart';
import 'package:flutter_app_template/core/utils/utils.dart';
import 'package:flutter_app_template/features/settings/data/data.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({
    required ISettingsRepository settingsRepository,
    required ILogger logger,
  }) : _settingsRepository = settingsRepository,
       _logger = logger,
       super(
         const SettingsState(locale: Locale(AppConfig.defaultLanguageCode)),
       ) {
    _restoreLocale();
  }

  final ISettingsRepository _settingsRepository;
  final ILogger _logger;

  Future<void> changeLocale(Locale newLocale) async {
    try {
      final bool success = await _settingsRepository.changeLocale(
        newLocale.languageCode,
      );

      if (!success) {
        _logger.warning("Couldn't update app locale...");
      }

      if (state.locale != newLocale) {
        emit(SettingsState(locale: newLocale));
      }
    } catch (exception, stackTrace) {
      _logger.exception(exception, stackTrace);
    }
  }

  Future<void> _restoreLocale() async {
    try {
      final restoredLocale = Locale(
        await _settingsRepository.getCurrentLocale(),
      );

      if (state.locale != restoredLocale) {
        emit(SettingsState(locale: restoredLocale));
      }
    } catch (exception, stackTrace) {
      _logger.exception(exception, stackTrace);
    }
  }
}
