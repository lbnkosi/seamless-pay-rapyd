import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vendor_record.g.dart';

abstract class VendorRecord
    implements Built<VendorRecord, VendorRecordBuilder> {
  static Serializer<VendorRecord> get serializer => _$vendorRecordSerializer;

  int? get walletBalance;

  int? get totalOrders;

  int? get totalCustomers;

  int? get totalCompletedOrders;

  int? get totalRefundsAmount;

  int? get totalIncompleteOrders;

  int? get totalRefunds;

  int? get totalPendingPayments;

  int? get totalPaymentsMade;

  int? get totalDepositsFromCustomersSoFar;

  int? get totalDepositsAmountSoFar;

  int? get totalAcrossAllWallets;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VendorRecordBuilder builder) => builder
    ..walletBalance = 0
    ..totalOrders = 0
    ..totalCustomers = 0
    ..totalCompletedOrders = 0
    ..totalRefundsAmount = 0
    ..totalIncompleteOrders = 0
    ..totalRefunds = 0
    ..totalPendingPayments = 0
    ..totalPaymentsMade = 0
    ..totalDepositsFromCustomersSoFar = 0
    ..totalDepositsAmountSoFar = 0
    ..totalAcrossAllWallets = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendor');

  static Stream<VendorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VendorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VendorRecord._();
  factory VendorRecord([void Function(VendorRecordBuilder) updates]) =
      _$VendorRecord;

  static VendorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVendorRecordData({
  int? walletBalance,
  int? totalOrders,
  int? totalCustomers,
  int? totalCompletedOrders,
  int? totalRefundsAmount,
  int? totalIncompleteOrders,
  int? totalRefunds,
  int? totalPendingPayments,
  int? totalPaymentsMade,
  int? totalDepositsFromCustomersSoFar,
  int? totalDepositsAmountSoFar,
  int? totalAcrossAllWallets,
}) {
  final firestoreData = serializers.toFirestore(
    VendorRecord.serializer,
    VendorRecord(
      (v) => v
        ..walletBalance = walletBalance
        ..totalOrders = totalOrders
        ..totalCustomers = totalCustomers
        ..totalCompletedOrders = totalCompletedOrders
        ..totalRefundsAmount = totalRefundsAmount
        ..totalIncompleteOrders = totalIncompleteOrders
        ..totalRefunds = totalRefunds
        ..totalPendingPayments = totalPendingPayments
        ..totalPaymentsMade = totalPaymentsMade
        ..totalDepositsFromCustomersSoFar = totalDepositsFromCustomersSoFar
        ..totalDepositsAmountSoFar = totalDepositsAmountSoFar
        ..totalAcrossAllWallets = totalAcrossAllWallets,
    ),
  );

  return firestoreData;
}
