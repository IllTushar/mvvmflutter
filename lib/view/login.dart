import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebase/utils/routes/RoutesName.dart';
import 'package:flutterfirebase/utils/utilsfiles.dart';

import 'home.dart';

class Login extends StatefulWidget {
  Login() {}

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  ValueNotifier<bool> _notifierPassword = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _email,
              focusNode: _emailFocusNode,
              decoration: const InputDecoration(
                hintText: "Email",
                labelText: "Email", // Changed label to labelText
                prefixIcon: Icon(Icons.email),
              ),
              onFieldSubmitted: (value) => UtilsFile.focusNodes(
                  context, _emailFocusNode, _passwordFocusNode),
            ),
            ValueListenableBuilder(
              valueListenable: _notifierPassword,
              builder: (context, isPasswordVisible, child) {
                return TextFormField(
                  controller: _password,
                  obscureText: !isPasswordVisible,
                  focusNode: _passwordFocusNode,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password", // Changed label to labelText
                    prefixIcon: Icon(Icons.vpn_key),
                    suffixIcon: InkWell(
                      onTap: () {
                        _notifierPassword.value =
                        !_notifierPassword.value;
                      },
                      child: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
