// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.orderId;
    if (value != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.allocateFundsToOrder;
    if (value != null) {
      result
        ..add('allocateFundsToOrder')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isOrderComplete;
    if (value != null) {
      result
        ..add('isOrderComplete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentList;
    if (value != null) {
      result
        ..add('paymentList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PaymentListStruct)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'allocateFundsToOrder':
          result.allocateFundsToOrder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isOrderComplete':
          result.isOrderComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentList':
          result.paymentList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PaymentListStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrdersRecord extends OrdersRecord {
  @override
  final String? orderId;
  @override
  final String? amount;
  @override
  final String? email;
  @override
  final String? customerId;
  @override
  final String? currency;
  @override
  final String? itemName;
  @override
  final bool? allocateFundsToOrder;
  @override
  final bool? isOrderComplete;
  @override
  final String? status;
  @override
  final BuiltList<PaymentListStruct>? paymentList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder)? updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {this.orderId,
      this.amount,
      this.email,
      this.customerId,
      this.currency,
      this.itemName,
      this.allocateFundsToOrder,
      this.isOrderComplete,
      this.status,
      this.paymentList,
      this.ffRef})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        orderId == other.orderId &&
        amount == other.amount &&
        email == other.email &&
        customerId == other.customerId &&
        currency == other.currency &&
        itemName == other.itemName &&
        allocateFundsToOrder == other.allocateFundsToOrder &&
        isOrderComplete == other.isOrderComplete &&
        status == other.status &&
        paymentList == other.paymentList &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, orderId.hashCode),
                                            amount.hashCode),
                                        email.hashCode),
                                    customerId.hashCode),
                                currency.hashCode),
                            itemName.hashCode),
                        allocateFundsToOrder.hashCode),
                    isOrderComplete.hashCode),
                status.hashCode),
            paymentList.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('orderId', orderId)
          ..add('amount', amount)
          ..add('email', email)
          ..add('customerId', customerId)
          ..add('currency', currency)
          ..add('itemName', itemName)
          ..add('allocateFundsToOrder', allocateFundsToOrder)
          ..add('isOrderComplete', isOrderComplete)
          ..add('status', status)
          ..add('paymentList', paymentList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  bool? _allocateFundsToOrder;
  bool? get allocateFundsToOrder => _$this._allocateFundsToOrder;
  set allocateFundsToOrder(bool? allocateFundsToOrder) =>
      _$this._allocateFundsToOrder = allocateFundsToOrder;

  bool? _isOrderComplete;
  bool? get isOrderComplete => _$this._isOrderComplete;
  set isOrderComplete(bool? isOrderComplete) =>
      _$this._isOrderComplete = isOrderComplete;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<PaymentListStruct>? _paymentList;
  ListBuilder<PaymentListStruct> get paymentList =>
      _$this._paymentList ??= new ListBuilder<PaymentListStruct>();
  set paymentList(ListBuilder<PaymentListStruct>? paymentList) =>
      _$this._paymentList = paymentList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _amount = $v.amount;
      _email = $v.email;
      _customerId = $v.customerId;
      _currency = $v.currency;
      _itemName = $v.itemName;
      _allocateFundsToOrder = $v.allocateFundsToOrder;
      _isOrderComplete = $v.isOrderComplete;
      _status = $v.status;
      _paymentList = $v.paymentList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    _$OrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdersRecord._(
              orderId: orderId,
              amount: amount,
              email: email,
              customerId: customerId,
              currency: currency,
              itemName: itemName,
              allocateFundsToOrder: allocateFundsToOrder,
              isOrderComplete: isOrderComplete,
              status: status,
              paymentList: _paymentList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paymentList';
        _paymentList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
