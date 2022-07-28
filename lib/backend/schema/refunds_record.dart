import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'refunds_record.g.dart';

abstract class RefundsRecord
    implements Built<RefundsRecord, RefundsRecordBuilder> {
  static Serializer<RefundsRecord> get serializer => _$refundsRecordSerializer;

  String? get customerId;

  String? get email;

  int? get refundAmount;

  String? get refundId;

  String? get refundMethod;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RefundsRecordBuilder builder) => builder
    ..customerId = ''
    ..email = ''
    ..refundAmount = 0
    ..refundId = ''
    ..refundMethod = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('refunds');

  static Stream<RefundsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RefundsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RefundsRecord._();
  factory RefundsRecord([void Function(RefundsRecordBuilder) updates]) =
      _$RefundsRecord;

  static RefundsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRefundsRecordData({
  String? customerId,
  String? email,
  int? refundAmount,
  String? refundId,
  String? refundMethod,
}) {
  final firestoreData = serializers.toFirestore(
    RefundsRecord.serializer,
    RefundsRecord(
      (r) => r
        ..customerId = customerId
        ..email = email
        ..refundAmount = refundAmount
        ..refundId = refundId
        ..refundMethod = refundMethod,
    ),
  );

  return firestoreData;
}
