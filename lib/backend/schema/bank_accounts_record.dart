import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bank_accounts_record.g.dart';

abstract class BankAccountsRecord
    implements Built<BankAccountsRecord, BankAccountsRecordBuilder> {
  static Serializer<BankAccountsRecord> get serializer =>
      _$bankAccountsRecordSerializer;

  String? get bankName;

  @BuiltValueField(wireName: 'country_iso')
  String? get countryIso;

  String? get currency;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BankAccountsRecordBuilder builder) => builder
    ..bankName = ''
    ..countryIso = ''
    ..currency = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bankAccounts');

  static Stream<BankAccountsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BankAccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BankAccountsRecord._();
  factory BankAccountsRecord(
          [void Function(BankAccountsRecordBuilder) updates]) =
      _$BankAccountsRecord;

  static BankAccountsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBankAccountsRecordData({
  String? bankName,
  String? countryIso,
  String? currency,
}) {
  final firestoreData = serializers.toFirestore(
    BankAccountsRecord.serializer,
    BankAccountsRecord(
      (b) => b
        ..bankName = bankName
        ..countryIso = countryIso
        ..currency = currency,
    ),
  );

  return firestoreData;
}
