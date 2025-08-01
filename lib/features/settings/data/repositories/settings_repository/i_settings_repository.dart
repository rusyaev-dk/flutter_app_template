abstract interface class ISettingsRepository {
  Future<bool> changeLocale(String newLocale);
  Future<String> getCurrentLocale();
}
