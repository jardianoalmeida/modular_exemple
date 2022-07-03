import 'package:flutter_application_1/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/view/home_view.dart';
import 'modules/splash/controller/splash_controller.dart';
import 'modules/splash/view/splash_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashView()),
        ModuleRoute('/login', module: LoginModule()),
        ChildRoute('/home', child: (context, args) => const HomeView()),
      ];
}
