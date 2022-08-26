import 'package:app/constants/env.dart';
import 'package:app/models/cluster.dart';
import 'package:app/models/shg.dart';
import 'package:app/widgets/buttons.dart';
import 'package:app/constants/texts.dart';
import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username, password;
  late bool isValid;
  final List<SHG> shgs = dummySHGs;

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
                Text(
                  TextConstants.appTitle,
                  style: Theme.of(context).textTheme.headline5,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Password",
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
                  callback: () async {
                    // final resp = await RequestService.get(
                    //     "$BASE_URL/user/auth/$username/$password", {});
                    // print(resp.data);
                    // print(resp.statusCode);
                    // Navigator.pushNamed(context, AllRoutesConstants.login);
                    for (SHG element in shgs) {
                      if (element.shgId == username && password == '123') {
                        Navigator.pushReplacementNamed(
                            context, AllRoutesConstants.homeSHG,
                            arguments: element);
                        return;
                      }
                    }
                    if (username == "3490") {
                      final cluster = Cluster(shgs, '3490', '12');
                      Navigator.of(context).pushReplacementNamed(
                          AllRoutesConstants.homeAO,
                          arguments: cluster);
                      return;
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Invalid Credentials`")));
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
