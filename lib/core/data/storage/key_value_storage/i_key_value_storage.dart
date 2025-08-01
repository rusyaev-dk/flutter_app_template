abstract interface class IKeyValueStorage {
  Future<bool> save({required String key, required Object value});
  Future<T?> get<T>({required String key});
  Future<bool> delete({required String key});
  Future<bool> clear();
}
