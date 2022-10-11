import 'package:flutter/material.dart';


class LoginProvider extends ChangeNotifier{
  String userna = "";
  String passna = "";
var arjun = "Hai I am Tonny ....here";

void singIn(String username,String password){
  userna = username;
  passna = password;
  notifyListeners();
}

void alertBox(BuildContext context){
  var snackBar = SnackBar(content: Text('Hello World'));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

}