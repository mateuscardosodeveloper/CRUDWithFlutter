import 'package:flutter/material.dart';

import 'app/injection_dependencies.dart';
import 'app/my_app.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}

