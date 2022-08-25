import 'package:app/services/request.service.dart';
import 'package:app/widgets/buttons.dart';
import 'package:app/constants/texts.dart';
import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late String username, password;
  late bool isValid;

  @override
  void initState() {
    super.initState();
    username = "";
    password = "";
    isValid = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  TextConstants.appTitle,
                  style: TextStyle(fontSize: 40),
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: "Username",
                  ),
                  onChanged: (val) {
                    setState(() {
                      username = val;
                      if (username.isEmpty) {
                        isValid = false;
                      } else {
                        isValid = true;
                      }
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: "password",
                  ),
                  obscureText: true,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ActiveButton(
                  text: TextConstants.login,
                  callback: () {
                    // RequestService.get(url, headers)
                    // Navigator.pushNamed(context, AllRoutesConstants.login);
                    Navigator.pushReplacementNamed(
                        context, AllRoutesConstants.home);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
