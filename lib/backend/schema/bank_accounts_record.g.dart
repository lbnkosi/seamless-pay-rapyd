// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_accounts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BankAccountsRecord> _$bankAccountsRecordSerializer =
    new _$BankAccountsRecordSerializer();

class _$BankAccountsRecordSerializer
    implements StructuredSerializer<BankAccountsRecord> {
  @override
  final Iterable<Type> types = const [BankAccountsRecord, _$BankAccountsRecord];
  @override
  final String wireName = 'BankAccountsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BankAccountsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bankName;
    if (value != null) {
      result
        ..add('bankName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryIso;
    if (value != null) {
      result
        ..add('country_iso')
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
  BankAccountsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BankAccountsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bankName':
          result.bankName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country_iso':
          result.countryIso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
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

class _$BankAccountsRecord extends BankAccountsRecord {
  @override
  final String? bankName;
  @override
  final String? countryIso;
  @override
  final String? currency;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BankAccountsRecord(
          [void Function(BankAccountsRecordBuilder)? updates]) =>
      (new BankAccountsRecordBuilder()..update(updates))._build();

  _$BankAccountsRecord._(
      {this.bankName, this.countryIso, this.currency, this.ffRef})
      : super._();

  @override
  BankAccountsRecord rebuild(
          void Function(BankAccountsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankAccountsRecordBuilder toBuilder() =>
      new BankAccountsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BankAccountsRecord &&
        bankName == other.bankName &&
        countryIso == other.countryIso &&
        currency == other.currency &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bankName.hashCode), countryIso.hashCode),
            currency.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BankAccountsRecord')
          ..add('bankName', bankName)
          ..add('countryIso', countryIso)
          ..add('currency', currency)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BankAccountsRecordBuilder
    implements Builder<BankAccountsRecord, BankAccountsRecordBuilder> {
  _$BankAccountsRecord? _$v;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _countryIso;
  String? get countryIso => _$this._countryIso;
  set countryIso(String? countryIso) => _$this._countryIso = countryIso;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BankAccountsRecordBuilder() {
    BankAccountsRecord._initializeBuilder(this);
  }

  BankAccountsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bankName = $v.bankName;
      _countryIso = $v.countryIso;
      _currency = $v.currency;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BankAccountsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BankAccountsRecord;
  }

  @override
  void update(void Function(BankAccountsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BankAccountsRecord build() => _build();

  _$BankAccountsRecord _build() {
    final _$result = _$v ??
        new _$BankAccountsRecord._(
            bankName: bankName,
            countryIso: countryIso,
            currency: currency,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
