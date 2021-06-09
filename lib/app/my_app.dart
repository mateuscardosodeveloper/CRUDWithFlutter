import 'package:crud_with_flutter/app/views/contact_form.dart';
import 'package:crud_with_flutter/app/views/contact_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const CONTACt_FORM = 'contact-form';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => ContactList(),
        CONTACt_FORM: (context) => ContactForm(),
      },
    );
  }
}