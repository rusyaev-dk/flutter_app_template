import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/core/data/data.dart';
import 'package:provider/provider.dart';
import 'package:talker_flutter/talker_flutter.dart';

final class AppConfig {
  AppConfig({
    required this.storageAggregator,
    required this.dio,
    required this.talker,
  });

  final StorageAggregator storageAggregator;
  final Dio dio;
  final Talker talker;

  static AppConfig of(BuildContext context) {
    return Provider.of<AppConfig>(context);
  }
}

final class AppPreferences {
  static const defaultLanguageCode = AppLanguages.ru;
}

abstract class AppLanguages {
  static const ru = "ru";
  static const en = "en";
  static const uz = "uz";
}
