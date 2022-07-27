import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'issued_banks_record.g.dart';

abstract class IssuedBanksRecord
    implements Built<IssuedBanksRecord, IssuedBanksRecordBuilder> {
  static Serializer<IssuedBanksRecord> get serializer =>
      _$issuedBanksRecordSerializer;

  String? get bank;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(IssuedBanksRecordBuilder builder) =>
      builder..bank = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('issued_banks')
          : FirebaseFirestore.instance.collectionGroup('issued_banks');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('issued_banks').doc();

  static Stream<IssuedBanksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IssuedBanksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IssuedBanksRecord._();
  factory IssuedBanksRecord([void Function(IssuedBanksRecordBuilder) updates]) =
      _$IssuedBanksRecord;

  static IssuedBanksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIssuedBanksRecordData({
  String? bank,
}) {
  final firestoreData = serializers.toFirestore(
    IssuedBanksRecord.serializer,
    IssuedBanksRecord(
      (i) => i..bank = bank,
    ),
  );

  return firestoreData;
}
