import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String examDateSeperator(List<DateTime> dates) {
  // separate dates value to ',' and last value to be 'and'
  if (dates.isEmpty) {
    return '';
  } else if (dates.length == 1) {
    return DateFormat.yMd().format(dates.first);
  } else if (dates.length == 2) {
    return DateFormat.yMd().format(dates.first) +
        ' and ' +
        DateFormat.yMd().format(dates.last);
  } else {
    String result = '';
    for (int i = 0; i < dates.length - 1; i++) {
      result += DateFormat.yMd().format(dates[i]) + ', ';
    }
    result += 'and ' + DateFormat.yMd().format(dates.last);
    return result;
  }
}

bool validation(List<String> imageurl) {
  // if any element in imageurl is empty then return false else return true
  for (String url in imageurl) {
    if (url.isEmpty) {
      return false;
    }
  }
  return true;
}
