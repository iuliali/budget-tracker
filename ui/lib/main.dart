import 'package:flutter/material.dart';
import 'presentation/core/app.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await getIt.allReady();
  runApp(AppWidget());
}

