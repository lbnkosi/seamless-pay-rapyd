import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'customers_record.g.dart';

abstract class CustomersRecord
    implements Built<CustomersRecord, CustomersRecordBuilder> {
  static Serializer<CustomersRecord> get serializer =>
      _$customersRecordSerializer;

  String? get name;

  String? get surname;

  String? get email;

  String? get customerId;

  String? get walletId;

  String? get phoneNumber;

  String? get walletAmount;

  String? get totalOrders;

  String? get expMonth;

  String? get expYear;

  String? get last4;

  String? get bankName;

  @BuiltValueField(wireName: 'country_iso')
  String? get countryIso;

  String? get currency;

  BuiltList<BankAccountsStruct>? get bankAccounts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CustomersRecordBuilder builder) => builder
    ..name = ''
    ..surname = ''
    ..email = ''
    ..customerId = ''
    ..walletId = ''
    ..phoneNumber = ''
    ..walletAmount = ''
    ..totalOrders = ''
    ..expMonth = ''
    ..expYear = ''
    ..last4 = ''
    ..bankName = ''
    ..countryIso = ''
    ..currency = ''
    ..bankAccounts = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CustomersRecord._();
  factory CustomersRecord([void Function(CustomersRecordBuilder) updates]) =
      _$CustomersRecord;

  static CustomersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCustomersRecordData({
  String? name,
  String? surname,
  String? email,
  String? customerId,
  String? walletId,
  String? phoneNumber,
  String? walletAmount,
  String? totalOrders,
  String? expMonth,
  String? expYear,
  String? last4,
  String? bankName,
  String? countryIso,
  String? currency,
}) {
  final firestoreData = serializers.toFirestore(
    CustomersRecord.serializer,
    CustomersRecord(
      (c) => c
        ..name = name
        ..surname = surname
        ..email = email
        ..customerId = customerId
        ..walletId = walletId
        ..phoneNumber = phoneNumber
        ..walletAmount = walletAmount
        ..totalOrders = totalOrders
        ..expMonth = expMonth
        ..expYear = expYear
        ..last4 = last4
        ..bankName = bankName
        ..countryIso = countryIso
        ..currency = currency
        ..bankAccounts = null,
    ),
  );

  return firestoreData;
}
