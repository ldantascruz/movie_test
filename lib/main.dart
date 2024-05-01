import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';
import 'initialize.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Initialize.initializeDependencies();
  runApp(const ScreenUtilInit(designSize: Size(360, 800), child: App()));
}
