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
import 'package:http/http.dart' as http;

Future<String?> convertAudioToBaseWeb(String fileUrl) async {
  // Convert audiopath to base64
  try {
    // Fetch the audio file from the given URL
    final response = await http.get(Uri.parse(fileUrl));

    // Convert the audio file to base64
    String base64Audio = base64.encode(response.bodyBytes);

    return base64Audio;
  } catch (e) {
    print('Error converting audio to base64: $e');
    return null;
  }
}
