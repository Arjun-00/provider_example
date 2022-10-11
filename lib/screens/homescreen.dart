import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providerfile/loginprovider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orange,
        child: Center(
          child: Text(Provider.of<LoginProvider>(context).arjun,style: const TextStyle(fontSize: 25,color: Colors.white),),
        ),
      ),
    );
  }
}
