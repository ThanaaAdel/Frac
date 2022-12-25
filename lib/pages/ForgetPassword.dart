
import 'package:flutter/material.dart';
import 'package:frac/shared/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
        backgroundColor: appbarGreen,
        title: Text("ForgetPassword"),
      ),
    );
  }
}