

import 'package:flutter_figma_test/locator_service.dart' as depinjections;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_figma_test/common/app_theme/app_theme.dart';
import 'package:flutter_figma_test/core/bloc/bloc_observer.dart';
import 'package:flutter_figma_test/home/presentation/widgets/BottomBar/bottom_bar_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await depinjections.initializeDependencies();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
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
        home: const BottomWidget());
  }
}
