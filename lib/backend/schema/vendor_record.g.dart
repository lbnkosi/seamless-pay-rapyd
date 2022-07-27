// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VendorRecord> _$vendorRecordSerializer =
    new _$VendorRecordSerializer();

class _$VendorRecordSerializer implements StructuredSerializer<VendorRecord> {
  @override
  final Iterable<Type> types = const [VendorRecord, _$VendorRecord];
  @override
  final String wireName = 'VendorRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VendorRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.walletBalance;
    if (value != null) {
      result
        ..add('walletBalance')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalOrders;
    if (value != null) {
      result
        ..add('totalOrders')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalCustomers;
    if (value != null) {
      result
        ..add('totalCustomers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalCompletedOrders;
    if (value != null) {
      result
        ..add('totalCompletedOrders')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalRefundsAmount;
    if (value != null) {
      result
        ..add('totalRefundsAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalIncompleteOrders;
    if (value != null) {
      result
        ..add('totalIncompleteOrders')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalRefunds;
    if (value != null) {
      result
        ..add('totalRefunds')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPendingPayments;
    if (value != null) {
      result
        ..add('totalPendingPayments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPaymentsMade;
    if (value != null) {
      result
        ..add('totalPaymentsMade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalDepositsFromCustomersSoFar;
    if (value != null) {
      result
        ..add('totalDepositsFromCustomersSoFar')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalDepositsAmountSoFar;
    if (value != null) {
      result
        ..add('totalDepositsAmountSoFar')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalAcrossAllWallets;
    if (value != null) {
      result
        ..add('totalAcrossAllWallets')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  VendorRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VendorRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'walletBalance':
          result.walletBalance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalOrders':
          result.totalOrders = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalCustomers':
          result.totalCustomers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalCompletedOrders':
          result.totalCompletedOrders = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalRefundsAmount':
          result.totalRefundsAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalIncompleteOrders':
          result.totalIncompleteOrders = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalRefunds':
          result.totalRefunds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalPendingPayments':
          result.totalPendingPayments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalPaymentsMade':
          result.totalPaymentsMade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalDepositsFromCustomersSoFar':
          result.totalDepositsFromCustomersSoFar = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'totalDepositsAmountSoFar':
          result.totalDepositsAmountSoFar = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalAcrossAllWallets':
          result.totalAcrossAllWallets = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$VendorRecord extends VendorRecord {
  @override
  final int? walletBalance;
  @override
  final int? totalOrders;
  @override
  final int? totalCustomers;
  @override
  final int? totalCompletedOrders;
  @override
  final int? totalRefundsAmount;
  @override
  final int? totalIncompleteOrders;
  @override
  final int? totalRefunds;
  @override
  final int? totalPendingPayments;
  @override
  final int? totalPaymentsMade;
  @override
  final int? totalDepositsFromCustomersSoFar;
  @override
  final int? totalDepositsAmountSoFar;
  @override
  final int? totalAcrossAllWallets;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VendorRecord([void Function(VendorRecordBuilder)? updates]) =>
      (new VendorRecordBuilder()..update(updates))._build();

  _$VendorRecord._(
      {this.walletBalance,
      this.totalOrders,
      this.totalCustomers,
      this.totalCompletedOrders,
      this.totalRefundsAmount,
      this.totalIncompleteOrders,
      this.totalRefunds,
      this.totalPendingPayments,
      this.totalPaymentsMade,
      this.totalDepositsFromCustomersSoFar,
      this.totalDepositsAmountSoFar,
      this.totalAcrossAllWallets,
      this.ffRef})
      : super._();

  @override
  VendorRecord rebuild(void Function(VendorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorRecordBuilder toBuilder() => new VendorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorRecord &&
        walletBalance == other.walletBalance &&
        totalOrders == other.totalOrders &&
        totalCustomers == other.totalCustomers &&
        totalCompletedOrders == other.totalCompletedOrders &&
        totalRefundsAmount == other.totalRefundsAmount &&
        totalIncompleteOrders == other.totalIncompleteOrders &&
        totalRefunds == other.totalRefunds &&
        totalPendingPayments == other.totalPendingPayments &&
        totalPaymentsMade == other.totalPaymentsMade &&
        totalDepositsFromCustomersSoFar ==
            other.totalDepositsFromCustomersSoFar &&
        totalDepositsAmountSoFar == other.totalDepositsAmountSoFar &&
        totalAcrossAllWallets == other.totalAcrossAllWallets &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(0,
                                                        walletBalance.hashCode),
                                                    totalOrders.hashCode),
                                                totalCustomers.hashCode),
                                            totalCompletedOrders.hashCode),
                                        totalRefundsAmount.hashCode),
                                    totalIncompleteOrders.hashCode),
                                totalRefunds.hashCode),
                            totalPendingPayments.hashCode),
                        totalPaymentsMade.hashCode),
                    totalDepositsFromCustomersSoFar.hashCode),
                totalDepositsAmountSoFar.hashCode),
            totalAcrossAllWallets.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorRecord')
          ..add('walletBalance', walletBalance)
          ..add('totalOrders', totalOrders)
          ..add('totalCustomers', totalCustomers)
          ..add('totalCompletedOrders', totalCompletedOrders)
          ..add('totalRefundsAmount', totalRefundsAmount)
          ..add('totalIncompleteOrders', totalIncompleteOrders)
          ..add('totalRefunds', totalRefunds)
          ..add('totalPendingPayments', totalPendingPayments)
          ..add('totalPaymentsMade', totalPaymentsMade)
          ..add('totalDepositsFromCustomersSoFar',
              totalDepositsFromCustomersSoFar)
          ..add('totalDepositsAmountSoFar', totalDepositsAmountSoFar)
          ..add('totalAcrossAllWallets', totalAcrossAllWallets)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VendorRecordBuilder
    implements Builder<VendorRecord, VendorRecordBuilder> {
  _$VendorRecord? _$v;

  int? _walletBalance;
  int? get walletBalance => _$this._walletBalance;
  set walletBalance(int? walletBalance) =>
      _$this._walletBalance = walletBalance;

  int? _totalOrders;
  int? get totalOrders => _$this._totalOrders;
  set totalOrders(int? totalOrders) => _$this._totalOrders = totalOrders;

  int? _totalCustomers;
  int? get totalCustomers => _$this._totalCustomers;
  set totalCustomers(int? totalCustomers) =>
      _$this._totalCustomers = totalCustomers;

  int? _totalCompletedOrders;
  int? get totalCompletedOrders => _$this._totalCompletedOrders;
  set totalCompletedOrders(int? totalCompletedOrders) =>
      _$this._totalCompletedOrders = totalCompletedOrders;

  int? _totalRefundsAmount;
  int? get totalRefundsAmount => _$this._totalRefundsAmount;
  set totalRefundsAmount(int? totalRefundsAmount) =>
      _$this._totalRefundsAmount = totalRefundsAmount;

  int? _totalIncompleteOrders;
  int? get totalIncompleteOrders => _$this._totalIncompleteOrders;
  set totalIncompleteOrders(int? totalIncompleteOrders) =>
      _$this._totalIncompleteOrders = totalIncompleteOrders;

  int? _totalRefunds;
  int? get totalRefunds => _$this._totalRefunds;
  set totalRefunds(int? totalRefunds) => _$this._totalRefunds = totalRefunds;

  int? _totalPendingPayments;
  int? get totalPendingPayments => _$this._totalPendingPayments;
  set totalPendingPayments(int? totalPendingPayments) =>
      _$this._totalPendingPayments = totalPendingPayments;

  int? _totalPaymentsMade;
  int? get totalPaymentsMade => _$this._totalPaymentsMade;
  set totalPaymentsMade(int? totalPaymentsMade) =>
      _$this._totalPaymentsMade = totalPaymentsMade;

  int? _totalDepositsFromCustomersSoFar;
  int? get totalDepositsFromCustomersSoFar =>
      _$this._totalDepositsFromCustomersSoFar;
  set totalDepositsFromCustomersSoFar(int? totalDepositsFromCustomersSoFar) =>
      _$this._totalDepositsFromCustomersSoFar = totalDepositsFromCustomersSoFar;

  int? _totalDepositsAmountSoFar;
  int? get totalDepositsAmountSoFar => _$this._totalDepositsAmountSoFar;
  set totalDepositsAmountSoFar(int? totalDepositsAmountSoFar) =>
      _$this._totalDepositsAmountSoFar = totalDepositsAmountSoFar;

  int? _totalAcrossAllWallets;
  int? get totalAcrossAllWallets => _$this._totalAcrossAllWallets;
  set totalAcrossAllWallets(int? totalAcrossAllWallets) =>
      _$this._totalAcrossAllWallets = totalAcrossAllWallets;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VendorRecordBuilder() {
    VendorRecord._initializeBuilder(this);
  }

  VendorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _walletBalance = $v.walletBalance;
      _totalOrders = $v.totalOrders;
      _totalCustomers = $v.totalCustomers;
      _totalCompletedOrders = $v.totalCompletedOrders;
      _totalRefundsAmount = $v.totalRefundsAmount;
      _totalIncompleteOrders = $v.totalIncompleteOrders;
      _totalRefunds = $v.totalRefunds;
      _totalPendingPayments = $v.totalPendingPayments;
      _totalPaymentsMade = $v.totalPaymentsMade;
      _totalDepositsFromCustomersSoFar = $v.totalDepositsFromCustomersSoFar;
      _totalDepositsAmountSoFar = $v.totalDepositsAmountSoFar;
      _totalAcrossAllWallets = $v.totalAcrossAllWallets;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VendorRecord;
  }

  @override
  void update(void Function(VendorRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorRecord build() => _build();

  _$VendorRecord _build() {
    final _$result = _$v ??
        new _$VendorRecord._(
            walletBalance: walletBalance,
            totalOrders: totalOrders,
            totalCustomers: totalCustomers,
            totalCompletedOrders: totalCompletedOrders,
            totalRefundsAmount: totalRefundsAmount,
            totalIncompleteOrders: totalIncompleteOrders,
            totalRefunds: totalRefunds,
            totalPendingPayments: totalPendingPayments,
            totalPaymentsMade: totalPaymentsMade,
            totalDepositsFromCustomersSoFar: totalDepositsFromCustomersSoFar,
            totalDepositsAmountSoFar: totalDepositsAmountSoFar,
            totalAcrossAllWallets: totalAcrossAllWallets,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
