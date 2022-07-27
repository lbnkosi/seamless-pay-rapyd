import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  String? get orderId;

  String? get amount;

  String? get email;

  String? get customerId;

  String? get currency;

  String? get itemName;

  bool? get allocateFundsToOrder;

  bool? get isOrderComplete;

  String? get status;

  BuiltList<PaymentListStruct>? get paymentList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..orderId = ''
    ..amount = ''
    ..email = ''
    ..customerId = ''
    ..currency = ''
    ..itemName = ''
    ..allocateFundsToOrder = false
    ..isOrderComplete = false
    ..status = ''
    ..paymentList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderId,
  String? amount,
  String? email,
  String? customerId,
  String? currency,
  String? itemName,
  bool? allocateFundsToOrder,
  bool? isOrderComplete,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    OrdersRecord.serializer,
    OrdersRecord(
      (o) => o
        ..orderId = orderId
        ..amount = amount
        ..email = email
        ..customerId = customerId
        ..currency = currency
        ..itemName = itemName
        ..allocateFundsToOrder = allocateFundsToOrder
        ..isOrderComplete = isOrderComplete
        ..status = status
        ..paymentList = null,
    ),
  );

  return firestoreData;
}
