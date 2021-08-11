import 'package:flutter/material.dart';

import 'app/injection_dependencies.dart';
import 'app/my_app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async {
  setupInjection();
  runApp(MyApp());

}
