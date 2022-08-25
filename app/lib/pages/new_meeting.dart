import 'package:app/models/member.dart';
import 'package:flutter/material.dart';

class NewMeeting extends StatelessWidget {
  NewMeeting({Key? key}) : super(key: key);

  final meetingNo = 3;
  final DateTime date = DateTime.now();
  final members = List<Member>.generate(
    10,
        (index) =>
        Member(
          uid: index,
          firstName: 'firstName $index',
          lastName: 'lastName $index',
          middleName: 'middleNam $index',
        ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // children: [
        //   Text("Meeting No: $meetingNo"),
        //   Text("Date : ${date.day}/${date.month}/${date.year}"),
        //   const Text("Member List"),
        child: ListView.builder(
          itemBuilder: _itemBuilder,
          itemCount: members.length,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text(members[index].firstName),
    );
  }
}
