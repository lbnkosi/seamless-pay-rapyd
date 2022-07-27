// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:http/http.dart' as http;

Future<http.Response> fetchCustomer() async {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}
