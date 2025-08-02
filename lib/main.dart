import 'package:flutter_app_template/app/app.dart';
import 'package:flutter_app_template/runners/app_runner.dart';

/// flutter run --dart-define=APP_ENV=prod

void main() {
  const envString = String.fromEnvironment('APP_ENV', defaultValue: 'dev');

  final AppEnv env = switch (envString) {
    'dev' => AppEnv.dev,
    'stage' => AppEnv.stage,
    'prod' => AppEnv.prod,
    _ => throw Exception('Unknown APP_ENV: $envString'),
  };

  AppRunner(env).run();
}
