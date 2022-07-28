import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'payments_struct.g.dart';

abstract class PaymentsStruct
    implements Built<PaymentsStruct, PaymentsStructBuilder> {
  static Serializer<PaymentsStruct> get serializer =>
      _$paymentsStructSerializer;

  String? get link;

  @BuiltValueField(wireName: 'wallet_id')
  String? get walletId;

  @BuiltValueField(wireName: 'payment_id')
  String? get paymentId;

  @BuiltValueField(wireName: 'issued_account_id')
  String? get issuedAccountId;

  @BuiltValueField(wireName: 'amount_deposited_so_far')
  int? get amountDepositedSoFar;

  @BuiltValueField(wireName: 'amount_remaining')
  int? get amountRemaining;

  int? get amount;

  @BuiltValueField(wireName: 'expected_amount')
  int? get expectedAmount;

  @BuiltValueField(wireName: 'is_payment_complete')
  bool? get isPaymentComplete;

  @BuiltValueField(wireName: 'is_dependent_payment')
  bool? get isDependentPayment;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PaymentsStructBuilder builder) => builder
    ..link = ''
    ..walletId = ''
    ..paymentId = ''
    ..issuedAccountId = ''
    ..amountDepositedSoFar = 0
    ..amountRemaining = 0
    ..amount = 0
    ..expectedAmount = 0
    ..isPaymentComplete = false
    ..isDependentPayment = false
    ..firestoreUtilData = FirestoreUtilData();

  PaymentsStruct._();
  factory PaymentsStruct([void Function(PaymentsStructBuilder) updates]) =
      _$PaymentsStruct;
}

PaymentsStruct createPaymentsStruct({
  String? link,
  String? walletId,
  String? paymentId,
  String? issuedAccountId,
  int? amountDepositedSoFar,
  int? amountRemaining,
  int? amount,
  int? expectedAmount,
  bool? isPaymentComplete,
  bool? isDependentPayment,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool delete = false,
}) =>
    PaymentsStruct(
      (p) => p
        ..link = link
        ..walletId = walletId
        ..paymentId = paymentId
        ..issuedAccountId = issuedAccountId
        ..amountDepositedSoFar = amountDepositedSoFar
        ..amountRemaining = amountRemaining
        ..amount = amount
        ..expectedAmount = expectedAmount
        ..isPaymentComplete = isPaymentComplete
        ..isDependentPayment = isDependentPayment
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PaymentsStruct? updatePaymentsStruct(
  PaymentsStruct? payments, {
  bool clearUnsetFields = true,
}) =>
    payments != null
        ? (payments.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPaymentsStructData(
  Map<String, dynamic> firestoreData,
  PaymentsStruct? payments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (payments == null) {
    return;
  }
  if (payments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (forFieldValue && payments.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = {};
  }
  final paymentsData = getPaymentsFirestoreData(payments, forFieldValue);
  final nestedData = paymentsData.map((k, v) => MapEntry('$fieldName.$k', v));
  firestoreData.addAll(nestedData);
  return;
}

Map<String, dynamic> getPaymentsFirestoreData(
  PaymentsStruct? payments, [
  bool forFieldValue = false,
]) {
  if (payments == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(PaymentsStruct.serializer, payments);

  // Add any Firestore field values
  payments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentsListFirestoreData(
  List<PaymentsStruct>? paymentss,
) =>
    paymentss?.map((p) => getPaymentsFirestoreData(p, true)).toList() ?? [];
