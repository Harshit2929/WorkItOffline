import 'package:app/main.dart';
import 'package:app/models/member.dart';
import 'package:app/widgets/appbar.dart';
import 'package:app/widgets/containers.dart';
import 'package:flutter/material.dart';

class MeetingAttendance extends StatelessWidget {
  final Member member;

  const MeetingAttendance({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const MyAppbar(
        text: "Attendance of Meeting 1",
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Text("Text Button bar here"),
            RoundedGrayContainer(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Member Name"),
                  Text(member.firstName),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Father's/Husband's Name"),
                  Text(member.lastName),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Member Code: ${member.uid}"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Meeting attended"),
                      Checkbox(value: false, onChanged: (val) {})
                    ],
                  )
                ],
              ),
            )
        ],
      ),
          )),
    );
  }
}
