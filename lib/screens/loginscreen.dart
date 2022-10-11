import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providerfile/loginprovider.dart';
import 'package:provider_example/screens/homescreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.greenAccent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                    TextField(
                     controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.teal)
                      ),
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                      labelText: 'Your Username',
                    ),
              ),

              const SizedBox(height: 20,),

                    TextField(
                     controller: passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.teal)
                        ),
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                      labelText: 'Your Password',
                    ),
                    ),

              const SizedBox(height: 45,),

              RaisedButton(
                padding: const EdgeInsets.all(20.0),
                  child: const Text("SAVE"),
                  onPressed: (){
                  Provider.of<LoginProvider>(context,listen: false).singIn(usernameController.text, passwordController.text);
                  if(usernameController.text.trim() == "admin" && passwordController.text.trim() == "admin"){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }else{
                    Provider.of<LoginProvider>(context,listen: false).alertBox(context);
                  }
              }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
