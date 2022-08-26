import 'package:telephony/telephony.dart';
import 'dart:convert';

class MessagesService {
  final Telephony telephony = Telephony.instance;

  void sendSMS(Map<String, dynamic> data, String to) async {
    bool? permissionsGranted = await telephony.requestPhoneAndSmsPermissions;
    if (permissionsGranted ?? false) {
      final SmsSendStatusListener listener = (SendStatus status) {
        print(status);
      };
      telephony.sendSms(
          to: to,
          statusListener: listener,
          isMultipart: true,
          message: const JsonEncoder().convert(data).toString());
    }
  }
}
