import 'package:app/services/msg.service.dart';
import 'package:flutter/material.dart';

import '../../services/request.service.dart';
import '../../widgets/appbar.dart';
import 'dart:io';

import 'package:app/constants/env.dart';
import 'package:http_parser/http_parser.dart';
import 'package:app/services/image_compression.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class SHGMain extends StatelessWidget {
  const SHGMain({Key? key}) : super(key: key);

  void _pickNUpload() async {
    final pickr = ImagePicker();
    final image = await pickr.pickImage(source: ImageSource.camera);
    if (image != null) {
      final compreesedFile =
          await ImageCompressionService(File(image.path)).exec();
      print(compreesedFile);
      if (compreesedFile != null) {
        final partFile = await MultipartFile.fromFile(
          compreesedFile.path,
          filename: compreesedFile.uri.toString(),
          contentType: MediaType("image", "jpg"),
        );
        print(partFile);
        FormData formData = FormData.fromMap({
          "files": partFile,
        });
        RequestService.post("$BASE_URL/images",
            {'content-type': 'multipart/form-data'}, formData);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                const MyAppbar(
                  text: "Home",
                ),
                Positioned(
                  top: 150,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 200,
                    decoration:
                        const BoxDecoration(color: Colors.deepPurpleAccent),
                    width: 150,
                    child: Column(
                      children: const [
                        Text('Cluster Name : XYZ'),
                        Text("Cluster Code : 123456"),
                        Text("Raipur, Chhatishgarh"),
                        Text("CC: ABC Person"),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Text("SMS SMS SMS"),
            ElevatedButton(
                onPressed: () {
                  MessagesService().sendSMS(dummySHGs[0].toMap());
                },
                child: const Text("Send"))
          ],
        ),
      ),
    );
  }
}
