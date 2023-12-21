import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart'; // NEW

import 'app.dart';
import 'model/app_state_model.dart'; // NEW

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: (context) => AppStateModel()..loadProducts(),
      child: const CupertinoStoreApp(),
    ),
  );
}
