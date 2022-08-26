import 'package:app/constants/env.dart';
import 'package:app/models/cluster.dart';
import 'package:app/models/shg.dart';
import 'package:app/services/request.service.dart';
import 'package:app/widgets/buttons.dart';
import 'package:app/constants/texts.dart';
import 'package:app/routes.dart';
import 'package:flutter/material.dart';
import '../constants/theme.dart';

class InitialPage extends StatefulWidget {
  InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late String username, password;
  late bool isValid;

  final List<SHG> shgs = [
    SHG(
      shgId: '4',
      village: 'Savli',
      name: 'XYZ SHG',
      district: 'Sabarkantha',
      state: 'Gujarat',
      leaderName: 'ABC Ben',
      registeredDate: DateTime.utc(2020, 12, 4),
    ),
    SHG(
      shgId: '5',
      village: 'Savli',
      name: 'Lorem SHG',
      district: 'Ipsum',
      state: 'Rajasthan',
      leaderName: 'Lorem Ipsum ',
      registeredDate: DateTime.utc(2021, 10, 1),
    ),
    SHG(
      shgId: '5',
      village: 'Dummy village Name',
      name: 'ABC SHG',
      district: 'Surat',
      state: 'Gujarat',
      leaderName: 'PQR Ben',
      registeredDate: DateTime.utc(2019, 4, 1),
    ),
  ];

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
                            context, AllRoutesConstants.home,
                            arguments: element);
                        return;
                      }
                    }
                    if (username == 3490) {
                      final cluster = Cluster(shgs, '3490', '12');
                      Navigator.of(context).pushReplacementNamed(
                          AllRoutesConstants.aoHome,
                          arguments: cluster);
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
