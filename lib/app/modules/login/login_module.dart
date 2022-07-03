import 'package:flutter_modular/flutter_modular.dart';

import 'controller/login_controller.dart';
import 'view/login_view.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginView()),
      ];
}
