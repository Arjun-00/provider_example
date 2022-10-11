import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providerfile/loginprovider.dart';
import 'package:provider_example/screens/homescreen.dart';
import 'package:provider_example/screens/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: MaterialApp(
        title: 'Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LoginScreen(),
      ),
    );
  }
}