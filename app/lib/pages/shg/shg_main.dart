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
    return Container(
      child: Container(
          child: Center(
        child: Column(
          children: [
            const MyAppbar(
              text: "Home",
            ),
            Text("Home"),
            IconButton(
              icon: Icon(
                Icons.add,
                size: 40,
              ),
              onPressed: () {
                _pickNUpload();
              },
            )
          ],
        ),
      )),
    );
  }
}
