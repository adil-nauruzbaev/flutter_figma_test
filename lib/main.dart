import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_figma_test/locator_service.dart' as depinjections;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_figma_test/common/app_theme/app_theme.dart';
import 'package:flutter_figma_test/core/bloc/bloc_observer.dart';
import 'package:flutter_figma_test/home/presentation/widgets/BottomBar/bottom_bar_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await depinjections.initializeDependencies();
  await EasyLocalization.ensureInitialized();
  BlocOverrides.runZoned(
    () => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('ru', 'RU'),
          Locale('en', 'US'),
        ],
        path: 'assets/translations',
        saveLocale: true,
        fallbackLocale: const Locale('ru', 'RU'),
        child: const MyApp(),
      ),
    ),
    blocObserver: BlocsObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.light,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale = Locale('ru', 'RU'),
        home: const BottomWidget());
  }
}
