import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String isOrderComplete(bool? isOrderCompleteFlag) {
  if (isOrderCompleteFlag == true) {
    return "Order Complete";
  } else {
    return "Order In Progress";
  }
}

String isAutoAsignPayment(bool? autoAllocationFlag) {
  if (autoAllocationFlag == true) {
    return "Auto Allocation has been enabled for this order";
  } else {
    return "Auto allocation disabled";
  }
}
