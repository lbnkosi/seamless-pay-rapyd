// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issued_banks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssuedBanksRecord> _$issuedBanksRecordSerializer =
    new _$IssuedBanksRecordSerializer();

class _$IssuedBanksRecordSerializer
    implements StructuredSerializer<IssuedBanksRecord> {
  @override
  final Iterable<Type> types = const [IssuedBanksRecord, _$IssuedBanksRecord];
  @override
  final String wireName = 'IssuedBanksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, IssuedBanksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bank;
    if (value != null) {
      result
        ..add('bank')
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
  IssuedBanksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssuedBanksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bank':
          result.bank = serializers.deserialize(value,
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

class _$IssuedBanksRecord extends IssuedBanksRecord {
  @override
  final String? bank;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IssuedBanksRecord(
          [void Function(IssuedBanksRecordBuilder)? updates]) =>
      (new IssuedBanksRecordBuilder()..update(updates)).build();

  _$IssuedBanksRecord._({this.bank, this.ffRef}) : super._();

  @override
  IssuedBanksRecord rebuild(void Function(IssuedBanksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuedBanksRecordBuilder toBuilder() =>
      new IssuedBanksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuedBanksRecord &&
        bank == other.bank &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bank.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssuedBanksRecord')
          ..add('bank', bank)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IssuedBanksRecordBuilder
    implements Builder<IssuedBanksRecord, IssuedBanksRecordBuilder> {
  _$IssuedBanksRecord? _$v;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IssuedBanksRecordBuilder() {
    IssuedBanksRecord._initializeBuilder(this);
  }

  IssuedBanksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bank = $v.bank;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuedBanksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IssuedBanksRecord;
  }

  @override
  void update(void Function(IssuedBanksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssuedBanksRecord build() {
    final _$result = _$v ?? new _$IssuedBanksRecord._(bank: bank, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
