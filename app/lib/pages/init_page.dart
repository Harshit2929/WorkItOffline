import 'package:app/buttons.dart';
import 'package:app/constants/texts.dart';
import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    TextConstants.appTitle,
                    style: TextStyle(fontSize: 40),
                  ),
                  ActiveButton(
                    text: TextConstants.login,
                    callback: () {
                      // Navigator.pushNamed(context, AllRoutesConstants.login);
                      Navigator.pushNamed(context, AllRoutesConstants.home);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
