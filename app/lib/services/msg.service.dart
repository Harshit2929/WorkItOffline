import 'package:telephony/telephony.dart';
import 'dart:convert';

class MessagesService {
  final Telephony telephony = Telephony.instance;

  void sendSMS(Map<String, dynamic> data) async {
    bool? permissionsGranted = await telephony.requestPhoneAndSmsPermissions;
    if (permissionsGranted ?? false) {
      telephony.sendSms(
          to: "9558158852",
          isMultipart: true,
          message: "Masdaws daw adka;kdwa;'kdl;vjkal;kdjwvo"
              "qa;ljdd;wovqjo;'ajkdo;'vjkadbkwa;'okdl;'vkaw;'ldkwqac;kwal;dk"
              "dlllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllay the force be with you!");
      print(JsonEncoder().convert(data));
    }
  }
}
