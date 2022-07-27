import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'testdata_record.g.dart';

abstract class TestdataRecord
    implements Built<TestdataRecord, TestdataRecordBuilder> {
  static Serializer<TestdataRecord> get serializer =>
      _$testdataRecordSerializer;

  String? get country;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TestdataRecordBuilder builder) =>
      builder..country = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testdata');

  static Stream<TestdataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TestdataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TestdataRecord._();
  factory TestdataRecord([void Function(TestdataRecordBuilder) updates]) =
      _$TestdataRecord;

  static TestdataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTestdataRecordData({
  String? country,
}) {
  final firestoreData = serializers.toFirestore(
    TestdataRecord.serializer,
    TestdataRecord(
      (t) => t..country = country,
    ),
  );

  return firestoreData;
}
