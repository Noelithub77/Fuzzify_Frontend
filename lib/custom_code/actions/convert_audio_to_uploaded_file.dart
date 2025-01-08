// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

Future<String> convertAudioToUploadedFile(String myAudioPath) async {
  File audioFile = File(myAudioPath);
  Uint8List audioBytes = await audioFile.readAsBytes();
  String base64Str = base64.encode(audioBytes);
  return base64Str;
}

// import 'dart:io';
// import 'package:http/http.dart' as http;

// String convertAudioToUploadedFile(String? filePath) async {
//   if (filePath == null) return null;

//   try {
//     Uint8List? audioBytes;
//     bool isIOS = Platform.isIOS;
//     bool isAndroid = Platform.isAndroid;
//     if (isIOS || isAndroid) {
//       // iOS path handling
//       File file = File.fromUri(Uri.parse(filePath));
//       try {
//         audioBytes = await file.readAsBytes();
//       } catch (e) {
//         // Handle iOS file reading exception
//         print("Error reading file on iOS: $e");
//         return null;
//       }
//     } else {
//       // Web path handling
//       try {
//         // Fetch the blob data using the http package
//         final response = await http.get(Uri.parse(filePath));
//         audioBytes = response.bodyBytes;
//       } catch (e) {
//         // Handle web file fetching exception
//         print("Error fetching file on web: $e");
//         return null;
//       }
//     }

//     return audioBytes;
//     if (audioBytes != null && audioBytes.isNotEmpty) {
//       FFUploadedFile newFile = FFUploadedFile(
//         name: "audioFile.m4a",
//         bytes: audioBytes,
//         height: null,
//         width: null,
//         blurHash: null,
//       );
//       return newFile;
//     }
//   } catch (e) {
//     print('Error converting file: $e');
//   }
//   return null;
// }
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
