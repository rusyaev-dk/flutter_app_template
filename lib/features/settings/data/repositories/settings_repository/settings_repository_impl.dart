import 'package:flutter_app_template/app/app.dart';
import 'package:flutter_app_template/core/data/storage/storage.dart';
import 'package:flutter_app_template/features/settings/data/data.dart';

class SettingsRepository implements ISettingsRepository {
  SettingsRepository({required IKeyValueStorage storage}) : _storage = storage;

  final IKeyValueStorage _storage;
  final String _localeKey = "locale";

  @override
  Future<bool> changeLocale(String newLocale) async {
    return await _storage.save(key: _localeKey, value: newLocale);
  }

  @override
  Future<String> getCurrentLocale() async {
    return await _storage.get(key: _localeKey) ??
        AppPreferences.defaultLanguageCode;
  }
}
