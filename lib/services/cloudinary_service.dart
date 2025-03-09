//uploading files to cloudinary
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import "package:http/http.dart" as http;

Future<bool> uploadToCloudinary(FilePickerResult? filePickerResult) async {
  if (filePickerResult == null || filePickerResult.files.isEmpty) {
    print("No file is selected!");
    return false;
  }

  File file = File(filePickerResult.files.single.path!);

  String cloudName = dotenv.env['CLOUDINARY_CLOUD_NAME'] ?? '';

  //Create a Multipart Request to upload the file
  var uri = Uri.parse("https://api.cloudinary.com/v1_1/$cloudName/raw/upload");
  var request = http.MultipartRequest("POST", uri);

  //Read the file content as bytes
  var fileBytes = await file.readAsBytes();
}
