import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginController>();

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[800],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 140.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 30.0,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    controller.changeEmail(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  onChanged: (value) {
                    controller.changePassword(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Recover Password ?"),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 80.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * .90,
            height: 48.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: controller.isDisabledButton()
                    ? Colors.blue[800]
                    : Colors.grey,
              ),
              onPressed: () {},
              child: const Text('LOGIN'),
            ),
          ),
          const SizedBox(height: 100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Don't have an account ? "),
              Text(
                "Register",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }
}
