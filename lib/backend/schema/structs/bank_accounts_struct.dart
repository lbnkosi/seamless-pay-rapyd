import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'bank_accounts_struct.g.dart';

abstract class BankAccountsStruct
    implements Built<BankAccountsStruct, BankAccountsStructBuilder> {
  static Serializer<BankAccountsStruct> get serializer =>
      _$bankAccountsStructSerializer;

  String? get bankName;

  @BuiltValueField(wireName: 'country_iso')
  String? get countryIso;

  String? get currency;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(BankAccountsStructBuilder builder) => builder
    ..bankName = ''
    ..countryIso = ''
    ..currency = ''
    ..firestoreUtilData = FirestoreUtilData();

  BankAccountsStruct._();
  factory BankAccountsStruct(
          [void Function(BankAccountsStructBuilder) updates]) =
      _$BankAccountsStruct;
}

BankAccountsStruct createBankAccountsStruct({
  String? bankName,
  String? countryIso,
  String? currency,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool delete = false,
}) =>
    BankAccountsStruct(
      (b) => b
        ..bankName = bankName
        ..countryIso = countryIso
        ..currency = currency
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

BankAccountsStruct? updateBankAccountsStruct(
  BankAccountsStruct? bankAccounts, {
  bool clearUnsetFields = true,
}) =>
    bankAccounts != null
        ? (bankAccounts.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addBankAccountsStructData(
  Map<String, dynamic> firestoreData,
  BankAccountsStruct? bankAccounts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (bankAccounts == null) {
    return;
  }
  if (bankAccounts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (forFieldValue && bankAccounts.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = {};
  }
  final bankAccountsData =
      getBankAccountsFirestoreData(bankAccounts, forFieldValue);
  final nestedData =
      bankAccountsData.map((k, v) => MapEntry('$fieldName.$k', v));
  firestoreData.addAll(nestedData);
  return;
}

Map<String, dynamic> getBankAccountsFirestoreData(
  BankAccountsStruct? bankAccounts, [
  bool forFieldValue = false,
]) {
  if (bankAccounts == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(BankAccountsStruct.serializer, bankAccounts);

  // Add any Firestore field values
  bankAccounts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBankAccountsListFirestoreData(
  List<BankAccountsStruct>? bankAccountss,
) =>
    bankAccountss?.map((b) => getBankAccountsFirestoreData(b, true)).toList() ??
    [];
