import 'package:dio/dio.dart';
import 'package:flutter_app_template/app/app.dart';
import 'package:flutter_app_template/core/data/data.dart';
import 'package:flutter_app_template/core/utils/utils.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_flutter/talker_flutter.dart';

final class AppScope {
  AppScope({
    required this.env,
    required this.appConfig,
    required this.apiConfig,
    required this.sharedPreferences,
    required this.flutterSecureStorage,
    required this.storageAggregator,
    required this.dio,
    required this.talker,
    required this.logger,
  });

  final AppEnv env;
  final AppConfig appConfig;
  final ApiConfig apiConfig;
  final SharedPreferences sharedPreferences;
  final FlutterSecureStorage flutterSecureStorage;
  final StorageAggregator storageAggregator;
  final Dio dio;
  final Talker talker;
  final ILogger logger;
}
