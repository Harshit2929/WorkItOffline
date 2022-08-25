import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class ImageCompressionService {
  final File file;

  ImageCompressionService(this.file);

  Future<File?> exec() async {
    return await _getFileImage(file);
  }

  String _timeStamp() => DateTime.now().toIso8601String();

  Future<File?> _getFileImage(File file) async {
    final dir = await path_provider.getTemporaryDirectory();
    final targetPath = dir.absolute.path + '/' + _timeStamp() + ".jpg";

    final imgFile = await _compressAndGetFile(file, targetPath);
    return imgFile;
  }
}

Future<File?> _compressAndGetFile(File file, String targetPath) async {
  return await FlutterImageCompress.compressAndGetFile(
      file.absolute.path, targetPath,
      quality: 50);
}
