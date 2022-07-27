// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_list_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentListStruct> _$paymentListStructSerializer =
    new _$PaymentListStructSerializer();

class _$PaymentListStructSerializer
    implements StructuredSerializer<PaymentListStruct> {
  @override
  final Iterable<Type> types = const [PaymentListStruct, _$PaymentListStruct];
  @override
  final String wireName = 'PaymentListStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentListStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletId;
    if (value != null) {
      result
        ..add('wallet_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentId;
    if (value != null) {
      result
        ..add('payment_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuedAccountId;
    if (value != null) {
      result
        ..add('issued_account_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amountDepositedSoFar;
    if (value != null) {
      result
        ..add('amount_deposited_so_far')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.amountRemaining;
    if (value != null) {
      result
        ..add('amount_remaining')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expectedAmount;
    if (value != null) {
      result
        ..add('expected_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPaymentComplete;
    if (value != null) {
      result
        ..add('is_payment_complete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDependentPayment;
    if (value != null) {
      result
        ..add('is_dependent_payment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  PaymentListStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentListStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wallet_id':
          result.walletId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payment_id':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'issued_account_id':
          result.issuedAccountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount_deposited_so_far':
          result.amountDepositedSoFar = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'amount_remaining':
          result.amountRemaining = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expected_amount':
          result.expectedAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'is_payment_complete':
          result.isPaymentComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_dependent_payment':
          result.isDependentPayment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentListStruct extends PaymentListStruct {
  @override
  final String? link;
  @override
  final String? walletId;
  @override
  final String? paymentId;
  @override
  final String? issuedAccountId;
  @override
  final int? amountDepositedSoFar;
  @override
  final int? amountRemaining;
  @override
  final int? amount;
  @override
  final int? expectedAmount;
  @override
  final bool? isPaymentComplete;
  @override
  final bool? isDependentPayment;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PaymentListStruct(
          [void Function(PaymentListStructBuilder)? updates]) =>
      (new PaymentListStructBuilder()..update(updates))._build();

  _$PaymentListStruct._(
      {this.link,
      this.walletId,
      this.paymentId,
      this.issuedAccountId,
      this.amountDepositedSoFar,
      this.amountRemaining,
      this.amount,
      this.expectedAmount,
      this.isPaymentComplete,
      this.isDependentPayment,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PaymentListStruct', 'firestoreUtilData');
  }

  @override
  PaymentListStruct rebuild(void Function(PaymentListStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentListStructBuilder toBuilder() =>
      new PaymentListStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentListStruct &&
        link == other.link &&
        walletId == other.walletId &&
        paymentId == other.paymentId &&
        issuedAccountId == other.issuedAccountId &&
        amountDepositedSoFar == other.amountDepositedSoFar &&
        amountRemaining == other.amountRemaining &&
        amount == other.amount &&
        expectedAmount == other.expectedAmount &&
        isPaymentComplete == other.isPaymentComplete &&
        isDependentPayment == other.isDependentPayment &&
        firestoreUtilData == other.firestoreUtilData;
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
                                        $jc($jc(0, link.hashCode),
                                            walletId.hashCode),
                                        paymentId.hashCode),
                                    issuedAccountId.hashCode),
                                amountDepositedSoFar.hashCode),
                            amountRemaining.hashCode),
                        amount.hashCode),
                    expectedAmount.hashCode),
                isPaymentComplete.hashCode),
            isDependentPayment.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentListStruct')
          ..add('link', link)
          ..add('walletId', walletId)
          ..add('paymentId', paymentId)
          ..add('issuedAccountId', issuedAccountId)
          ..add('amountDepositedSoFar', amountDepositedSoFar)
          ..add('amountRemaining', amountRemaining)
          ..add('amount', amount)
          ..add('expectedAmount', expectedAmount)
          ..add('isPaymentComplete', isPaymentComplete)
          ..add('isDependentPayment', isDependentPayment)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PaymentListStructBuilder
    implements Builder<PaymentListStruct, PaymentListStructBuilder> {
  _$PaymentListStruct? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _walletId;
  String? get walletId => _$this._walletId;
  set walletId(String? walletId) => _$this._walletId = walletId;

  String? _paymentId;
  String? get paymentId => _$this._paymentId;
  set paymentId(String? paymentId) => _$this._paymentId = paymentId;

  String? _issuedAccountId;
  String? get issuedAccountId => _$this._issuedAccountId;
  set issuedAccountId(String? issuedAccountId) =>
      _$this._issuedAccountId = issuedAccountId;

  int? _amountDepositedSoFar;
  int? get amountDepositedSoFar => _$this._amountDepositedSoFar;
  set amountDepositedSoFar(int? amountDepositedSoFar) =>
      _$this._amountDepositedSoFar = amountDepositedSoFar;

  int? _amountRemaining;
  int? get amountRemaining => _$this._amountRemaining;
  set amountRemaining(int? amountRemaining) =>
      _$this._amountRemaining = amountRemaining;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  int? _expectedAmount;
  int? get expectedAmount => _$this._expectedAmount;
  set expectedAmount(int? expectedAmount) =>
      _$this._expectedAmount = expectedAmount;

  bool? _isPaymentComplete;
  bool? get isPaymentComplete => _$this._isPaymentComplete;
  set isPaymentComplete(bool? isPaymentComplete) =>
      _$this._isPaymentComplete = isPaymentComplete;

  bool? _isDependentPayment;
  bool? get isDependentPayment => _$this._isDependentPayment;
  set isDependentPayment(bool? isDependentPayment) =>
      _$this._isDependentPayment = isDependentPayment;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PaymentListStructBuilder() {
    PaymentListStruct._initializeBuilder(this);
  }

  PaymentListStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _walletId = $v.walletId;
      _paymentId = $v.paymentId;
      _issuedAccountId = $v.issuedAccountId;
      _amountDepositedSoFar = $v.amountDepositedSoFar;
      _amountRemaining = $v.amountRemaining;
      _amount = $v.amount;
      _expectedAmount = $v.expectedAmount;
      _isPaymentComplete = $v.isPaymentComplete;
      _isDependentPayment = $v.isDependentPayment;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentListStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentListStruct;
  }

  @override
  void update(void Function(PaymentListStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentListStruct build() => _build();

  _$PaymentListStruct _build() {
    final _$result = _$v ??
        new _$PaymentListStruct._(
            link: link,
            walletId: walletId,
            paymentId: paymentId,
            issuedAccountId: issuedAccountId,
            amountDepositedSoFar: amountDepositedSoFar,
            amountRemaining: amountRemaining,
            amount: amount,
            expectedAmount: expectedAmount,
            isPaymentComplete: isPaymentComplete,
            isDependentPayment: isDependentPayment,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PaymentListStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
