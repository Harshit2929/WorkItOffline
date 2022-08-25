import 'package:app/models/member.dart';
import 'package:app/routes.dart';
import 'package:app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class NewMeeting extends StatefulWidget {
  NewMeeting({Key? key}) : super(key: key);

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {
  late final meetingNo;

  late final DateTime date;

  late final List<Member> members;

  @override
  void initState() {
    super.initState();
    members = List<Member>.generate(
      10,
      (index) => Member(
        uid: index + 13124,
        firstName: 'firstName $index',
        lastName: 'lastName $index',
        middleName: 'middleNam $index',
      ),
    );
    date = DateTime.now();
    meetingNo = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        text: "Meeting No. $meetingNo",
        subtext: "Date : ${date.day}/${date.month}/${date.year}",
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
                const Expanded(child: Center(child: Text("Member List"))),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.grey),
            child: ListView.builder(
              // shrinkWrap: true,
              itemBuilder: _itemBuilder,
              itemCount: members.length,
            ),
          ),
        ],
      )),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        leading: Text(members[index].uid.toString()),
        title: Text(members[index].firstName),
        trailing: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, AllRoutesConstants.newMeetingAttendance,
                  arguments: members[index]);
            },
            child: Text("Status")),
      ),
    );
  }
}
