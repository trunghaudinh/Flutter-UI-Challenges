import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/screen/login/components/body.dart';
import 'package:flutter_uii_challenges/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(resizeToAvoidBottomInset: false, body: Body());
  }
}
