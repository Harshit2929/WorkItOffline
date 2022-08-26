import 'package:app/routes.dart';
import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';
import 'constants/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Telephony telephony = Telephony.instance;
    telephony.listenIncomingSms(
        onNewMessage: onNewMessage, onBackgroundMessage: onBgMsg);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: AppTheme.textTheme,
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: AllRoutesConstants.login,
    );
  }

  onNewMessage(SmsMessage message) async {
    print(message.body);
  }

  onBgMsg(SmsMessage message) async {
    print(message.body);
  }
}
