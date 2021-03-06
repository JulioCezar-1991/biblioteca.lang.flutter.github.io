import 'package:biblioteca_framework_flutter_github_io/app/app_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import 'app/themes/theme_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ThemeController>.value(
        value: ThemeController(),
      ),
    ], child: ModularApp(module: AppModule(), child: AppWidget()));
  }
}
