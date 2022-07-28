import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'payment_list_struct.g.dart';

abstract class PaymentListStruct
    implements Built<PaymentListStruct, PaymentListStructBuilder> {
  static Serializer<PaymentListStruct> get serializer =>
      _$paymentListStructSerializer;

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

  static void _initializeBuilder(PaymentListStructBuilder builder) => builder
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

  PaymentListStruct._();
  factory PaymentListStruct([void Function(PaymentListStructBuilder) updates]) =
      _$PaymentListStruct;
}

PaymentListStruct createPaymentListStruct({
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
    PaymentListStruct(
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

PaymentListStruct? updatePaymentListStruct(
  PaymentListStruct? paymentList, {
  bool clearUnsetFields = true,
}) =>
    paymentList != null
        ? (paymentList.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPaymentListStructData(
  Map<String, dynamic> firestoreData,
  PaymentListStruct? paymentList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentList == null) {
    return;
  }
  if (paymentList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (forFieldValue && paymentList.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = {};
  }
  final paymentListData =
      getPaymentListFirestoreData(paymentList, forFieldValue);
  final nestedData =
      paymentListData.map((k, v) => MapEntry('$fieldName.$k', v));
  firestoreData.addAll(nestedData);
  return;
}

Map<String, dynamic> getPaymentListFirestoreData(
  PaymentListStruct? paymentList, [
  bool forFieldValue = false,
]) {
  if (paymentList == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(PaymentListStruct.serializer, paymentList);

  // Add any Firestore field values
  paymentList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentListListFirestoreData(
  List<PaymentListStruct>? paymentLists,
) =>
    paymentLists?.map((p) => getPaymentListFirestoreData(p, true)).toList() ??
    [];
