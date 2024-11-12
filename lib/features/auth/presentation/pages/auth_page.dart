import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/auth_model.dart';
import '../controllers/auth_controller.dart';
import '../../../../core/utils/base_network_widget.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth Page'),
      ),
      body: NetworkWidget<AuthModel>(
        controller: controller,
        childBuilder: (data) {
          // Customize this to display model data
          return Text(data.toString());
        },
      ),
    );
  }
}
