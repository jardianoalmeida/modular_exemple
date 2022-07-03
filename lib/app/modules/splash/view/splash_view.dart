import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/splash/controller/splash_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var controller = Modular.get<SplashController>();

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (!controller.isLogged()) {
          Modular.to.pushReplacementNamed('/login');
        } else {
          Modular.to.pushReplacementNamed('/home');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: const Center(
          child: Text(
        '4:20',
        style: TextStyle(
            color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
