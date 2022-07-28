// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refunds_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefundsRecord> _$refundsRecordSerializer =
    new _$RefundsRecordSerializer();

class _$RefundsRecordSerializer implements StructuredSerializer<RefundsRecord> {
  @override
  final Iterable<Type> types = const [RefundsRecord, _$RefundsRecord];
  @override
  final String wireName = 'RefundsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RefundsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.customerId;
    if (value != null) {
      result
        ..add('customerId')
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
    value = object.refundAmount;
    if (value != null) {
      result
        ..add('refundAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.refundId;
    if (value != null) {
      result
        ..add('refundId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refundMethod;
    if (value != null) {
      result
        ..add('refundMethod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  RefundsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefundsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refundAmount':
          result.refundAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'refundId':
          result.refundId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refundMethod':
          result.refundMethod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$RefundsRecord extends RefundsRecord {
  @override
  final String? customerId;
  @override
  final String? email;
  @override
  final int? refundAmount;
  @override
  final String? refundId;
  @override
  final String? refundMethod;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RefundsRecord([void Function(RefundsRecordBuilder)? updates]) =>
      (new RefundsRecordBuilder()..update(updates))._build();

  _$RefundsRecord._(
      {this.customerId,
      this.email,
      this.refundAmount,
      this.refundId,
      this.refundMethod,
      this.ffRef})
      : super._();

  @override
  RefundsRecord rebuild(void Function(RefundsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefundsRecordBuilder toBuilder() => new RefundsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundsRecord &&
        customerId == other.customerId &&
        email == other.email &&
        refundAmount == other.refundAmount &&
        refundId == other.refundId &&
        refundMethod == other.refundMethod &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, customerId.hashCode), email.hashCode),
                    refundAmount.hashCode),
                refundId.hashCode),
            refundMethod.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefundsRecord')
          ..add('customerId', customerId)
          ..add('email', email)
          ..add('refundAmount', refundAmount)
          ..add('refundId', refundId)
          ..add('refundMethod', refundMethod)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RefundsRecordBuilder
    implements Builder<RefundsRecord, RefundsRecordBuilder> {
  _$RefundsRecord? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _refundAmount;
  int? get refundAmount => _$this._refundAmount;
  set refundAmount(int? refundAmount) => _$this._refundAmount = refundAmount;

  String? _refundId;
  String? get refundId => _$this._refundId;
  set refundId(String? refundId) => _$this._refundId = refundId;

  String? _refundMethod;
  String? get refundMethod => _$this._refundMethod;
  set refundMethod(String? refundMethod) => _$this._refundMethod = refundMethod;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RefundsRecordBuilder() {
    RefundsRecord._initializeBuilder(this);
  }

  RefundsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _email = $v.email;
      _refundAmount = $v.refundAmount;
      _refundId = $v.refundId;
      _refundMethod = $v.refundMethod;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefundsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefundsRecord;
  }

  @override
  void update(void Function(RefundsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefundsRecord build() => _build();

  _$RefundsRecord _build() {
    final _$result = _$v ??
        new _$RefundsRecord._(
            customerId: customerId,
            email: email,
            refundAmount: refundAmount,
            refundId: refundId,
            refundMethod: refundMethod,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
