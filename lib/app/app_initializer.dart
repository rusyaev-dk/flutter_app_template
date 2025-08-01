import 'package:flutter/material.dart';
import 'package:flutter_app_template/app/app.dart';
import 'package:flutter_app_template/core/utils/utils.dart';
import 'package:flutter_app_template/features/settings/data/data.dart';
import 'package:flutter_app_template/features/settings/presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AppInitializer extends StatelessWidget {
  const AppInitializer({
    required this.appConfig,
    required this.child,
    super.key,
  });

  final AppConfig appConfig;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppConfig>(create: (context) => appConfig),
        Provider<ILogger>(
          create: (context) => AppLogger(talker: appConfig.talker),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ISettingsRepository>(
            create: (context) => SettingsRepository(
              storage: appConfig.storageAggregator.sharedPrefsStorage,
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SettingsCubit(
                settingsRepository: RepositoryProvider.of<ISettingsRepository>(
                  context,
                ),
                logger: RepositoryProvider.of<ILogger>(context),
              ),
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
