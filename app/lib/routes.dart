import 'package:app/models/member.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/init_page.dart';
import 'package:app/pages/meeting_attendance.dart';
import 'package:app/pages/new_meeting.dart';
import 'package:flutter/material.dart';

import 'pages/login.dart';

Route? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AllRoutesConstants.initPage:
      return MaterialPageRoute(builder: (_) => InitialPage());
    case AllRoutesConstants.login:
      return MaterialPageRoute(builder: (_) => LoginPage());
    case AllRoutesConstants.home:
      return MaterialPageRoute(builder: (_) => HomePage());
    case AllRoutesConstants.newMeeting:
      return MaterialPageRoute(builder: (_) => NewMeeting());
    case AllRoutesConstants.newMeetingAttendance:
      final member = settings.arguments as Member;
      return MaterialPageRoute(
          builder: (_) => MeetingAttendance(member: member));
  }
}

class AllRoutesConstants {
  AllRoutesConstants._();

  static const initPage = '/';
  static const home = 'home';
  static const login = 'login';
  static const newMeeting = 'newMeeting';
  static const records = 'records';
  static const newMeetingAttendance = 'new_meeting_attendance';
}
