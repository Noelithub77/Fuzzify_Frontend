import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

DateTime strToDateTime(String dateString) {
  DateFormat inputFormat = DateFormat('dd-MM-yyyy');
  DateTime parsedDate = inputFormat.parse(dateString);

  // // Format the DateTime object into `yyyy-MM-dd`
  // DateFormat outputFormat = DateFormat('yyyy-MM-dd');
  // String outputDate = outputFormat.format(parsedDate);

  return parsedDate;
}

String dateTimeToStr(DateTime dateTimeString) {
  // DateFormat inputFormat = DateFormat('dd-MM-yyyy');
  // DateTime parsedDate = inputFormat.parse(dateString);

  // // Format the DateTime object into `yyyy-MM-dd`
  // DateFormat outputFormat = DateFormat('yyyy-MM-dd');
  // String outputDate = outputFormat.format(parsedDate);

  return DateFormat('dd-MM-yyyy').format(dateTimeString);
}
