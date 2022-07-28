import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _orders = prefs.getString('ff_orders')?.ref ?? _orders;
  }

  late SharedPreferences prefs;

  String customerId = '';

  DocumentReference? _orders;
  DocumentReference? get orders => _orders;
  set orders(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _orders = _value;
    prefs.setString('ff_orders', _value.path);
  }

  String paymentone = '';

  String paymenttwo = '';

  String paymentthree = '';

  String paymentfour = '';

  String paymentfive = '';

  String paymentsix = '';

  String paymentseven = '';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
