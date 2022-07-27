// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_accounts_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BankAccountsStruct> _$bankAccountsStructSerializer =
    new _$BankAccountsStructSerializer();

class _$BankAccountsStructSerializer
    implements StructuredSerializer<BankAccountsStruct> {
  @override
  final Iterable<Type> types = const [BankAccountsStruct, _$BankAccountsStruct];
  @override
  final String wireName = 'BankAccountsStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BankAccountsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
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
    return result;
  }

  @override
  BankAccountsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BankAccountsStructBuilder();

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

class _$BankAccountsStruct extends BankAccountsStruct {
  @override
  final String? bankName;
  @override
  final String? countryIso;
  @override
  final String? currency;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$BankAccountsStruct(
          [void Function(BankAccountsStructBuilder)? updates]) =>
      (new BankAccountsStructBuilder()..update(updates))._build();

  _$BankAccountsStruct._(
      {this.bankName,
      this.countryIso,
      this.currency,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'BankAccountsStruct', 'firestoreUtilData');
  }

  @override
  BankAccountsStruct rebuild(
          void Function(BankAccountsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankAccountsStructBuilder toBuilder() =>
      new BankAccountsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BankAccountsStruct &&
        bankName == other.bankName &&
        countryIso == other.countryIso &&
        currency == other.currency &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bankName.hashCode), countryIso.hashCode),
            currency.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BankAccountsStruct')
          ..add('bankName', bankName)
          ..add('countryIso', countryIso)
          ..add('currency', currency)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class BankAccountsStructBuilder
    implements Builder<BankAccountsStruct, BankAccountsStructBuilder> {
  _$BankAccountsStruct? _$v;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _countryIso;
  String? get countryIso => _$this._countryIso;
  set countryIso(String? countryIso) => _$this._countryIso = countryIso;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  BankAccountsStructBuilder() {
    BankAccountsStruct._initializeBuilder(this);
  }

  BankAccountsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bankName = $v.bankName;
      _countryIso = $v.countryIso;
      _currency = $v.currency;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BankAccountsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BankAccountsStruct;
  }

  @override
  void update(void Function(BankAccountsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BankAccountsStruct build() => _build();

  _$BankAccountsStruct _build() {
    final _$result = _$v ??
        new _$BankAccountsStruct._(
            bankName: bankName,
            countryIso: countryIso,
            currency: currency,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'BankAccountsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
