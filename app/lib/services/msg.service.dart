import 'package:telephony/telephony.dart';
import 'dart:convert';

class MessagesService {
  final Telephony telephony = Telephony.instance;

  void sendSMS(Map<String, dynamic> data) async {
    bool? permissionsGranted = await telephony.requestPhoneAndSmsPermissions;
    if (permissionsGranted ?? false) {
      final SmsSendStatusListener listener = (SendStatus status) {
        print(status);
      };
      telephony.sendSms(
          to: "9327619673",
          statusListener: listener,
          isMultipart: true,
          message: JsonEncoder().convert(data).toString());
    }
  }
}
