// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomersRecord> _$customersRecordSerializer =
    new _$CustomersRecordSerializer();

class _$CustomersRecordSerializer
    implements StructuredSerializer<CustomersRecord> {
  @override
  final Iterable<Type> types = const [CustomersRecord, _$CustomersRecord];
  @override
  final String wireName = 'CustomersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CustomersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surname;
    if (value != null) {
      result
        ..add('surname')
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
    value = object.walletId;
    if (value != null) {
      result
        ..add('walletId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletAmount;
    if (value != null) {
      result
        ..add('walletAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalOrders;
    if (value != null) {
      result
        ..add('totalOrders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expMonth;
    if (value != null) {
      result
        ..add('expMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expYear;
    if (value != null) {
      result
        ..add('expYear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last4;
    if (value != null) {
      result
        ..add('last4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.bankAccounts;
    if (value != null) {
      result
        ..add('bankAccounts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BankAccountsStruct)])));
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
  CustomersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
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
        case 'walletId':
          result.walletId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'walletAmount':
          result.walletAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalOrders':
          result.totalOrders = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expMonth':
          result.expMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expYear':
          result.expYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last4':
          result.last4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
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
        case 'bankAccounts':
          result.bankAccounts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BankAccountsStruct)]))!
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

class _$CustomersRecord extends CustomersRecord {
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? email;
  @override
  final String? customerId;
  @override
  final String? walletId;
  @override
  final String? phoneNumber;
  @override
  final String? walletAmount;
  @override
  final String? totalOrders;
  @override
  final String? expMonth;
  @override
  final String? expYear;
  @override
  final String? last4;
  @override
  final String? bankName;
  @override
  final String? countryIso;
  @override
  final String? currency;
  @override
  final BuiltList<BankAccountsStruct>? bankAccounts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CustomersRecord([void Function(CustomersRecordBuilder)? updates]) =>
      (new CustomersRecordBuilder()..update(updates))._build();

  _$CustomersRecord._(
      {this.name,
      this.surname,
      this.email,
      this.customerId,
      this.walletId,
      this.phoneNumber,
      this.walletAmount,
      this.totalOrders,
      this.expMonth,
      this.expYear,
      this.last4,
      this.bankName,
      this.countryIso,
      this.currency,
      this.bankAccounts,
      this.ffRef})
      : super._();

  @override
  CustomersRecord rebuild(void Function(CustomersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomersRecordBuilder toBuilder() =>
      new CustomersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomersRecord &&
        name == other.name &&
        surname == other.surname &&
        email == other.email &&
        customerId == other.customerId &&
        walletId == other.walletId &&
        phoneNumber == other.phoneNumber &&
        walletAmount == other.walletAmount &&
        totalOrders == other.totalOrders &&
        expMonth == other.expMonth &&
        expYear == other.expYear &&
        last4 == other.last4 &&
        bankName == other.bankName &&
        countryIso == other.countryIso &&
        currency == other.currency &&
        bankAccounts == other.bankAccounts &&
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    name
                                                                        .hashCode),
                                                                surname
                                                                    .hashCode),
                                                            email.hashCode),
                                                        customerId.hashCode),
                                                    walletId.hashCode),
                                                phoneNumber.hashCode),
                                            walletAmount.hashCode),
                                        totalOrders.hashCode),
                                    expMonth.hashCode),
                                expYear.hashCode),
                            last4.hashCode),
                        bankName.hashCode),
                    countryIso.hashCode),
                currency.hashCode),
            bankAccounts.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomersRecord')
          ..add('name', name)
          ..add('surname', surname)
          ..add('email', email)
          ..add('customerId', customerId)
          ..add('walletId', walletId)
          ..add('phoneNumber', phoneNumber)
          ..add('walletAmount', walletAmount)
          ..add('totalOrders', totalOrders)
          ..add('expMonth', expMonth)
          ..add('expYear', expYear)
          ..add('last4', last4)
          ..add('bankName', bankName)
          ..add('countryIso', countryIso)
          ..add('currency', currency)
          ..add('bankAccounts', bankAccounts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CustomersRecordBuilder
    implements Builder<CustomersRecord, CustomersRecordBuilder> {
  _$CustomersRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _walletId;
  String? get walletId => _$this._walletId;
  set walletId(String? walletId) => _$this._walletId = walletId;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _walletAmount;
  String? get walletAmount => _$this._walletAmount;
  set walletAmount(String? walletAmount) => _$this._walletAmount = walletAmount;

  String? _totalOrders;
  String? get totalOrders => _$this._totalOrders;
  set totalOrders(String? totalOrders) => _$this._totalOrders = totalOrders;

  String? _expMonth;
  String? get expMonth => _$this._expMonth;
  set expMonth(String? expMonth) => _$this._expMonth = expMonth;

  String? _expYear;
  String? get expYear => _$this._expYear;
  set expYear(String? expYear) => _$this._expYear = expYear;

  String? _last4;
  String? get last4 => _$this._last4;
  set last4(String? last4) => _$this._last4 = last4;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _countryIso;
  String? get countryIso => _$this._countryIso;
  set countryIso(String? countryIso) => _$this._countryIso = countryIso;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<BankAccountsStruct>? _bankAccounts;
  ListBuilder<BankAccountsStruct> get bankAccounts =>
      _$this._bankAccounts ??= new ListBuilder<BankAccountsStruct>();
  set bankAccounts(ListBuilder<BankAccountsStruct>? bankAccounts) =>
      _$this._bankAccounts = bankAccounts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CustomersRecordBuilder() {
    CustomersRecord._initializeBuilder(this);
  }

  CustomersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _surname = $v.surname;
      _email = $v.email;
      _customerId = $v.customerId;
      _walletId = $v.walletId;
      _phoneNumber = $v.phoneNumber;
      _walletAmount = $v.walletAmount;
      _totalOrders = $v.totalOrders;
      _expMonth = $v.expMonth;
      _expYear = $v.expYear;
      _last4 = $v.last4;
      _bankName = $v.bankName;
      _countryIso = $v.countryIso;
      _currency = $v.currency;
      _bankAccounts = $v.bankAccounts?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomersRecord;
  }

  @override
  void update(void Function(CustomersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomersRecord build() => _build();

  _$CustomersRecord _build() {
    _$CustomersRecord _$result;
    try {
      _$result = _$v ??
          new _$CustomersRecord._(
              name: name,
              surname: surname,
              email: email,
              customerId: customerId,
              walletId: walletId,
              phoneNumber: phoneNumber,
              walletAmount: walletAmount,
              totalOrders: totalOrders,
              expMonth: expMonth,
              expYear: expYear,
              last4: last4,
              bankName: bankName,
              countryIso: countryIso,
              currency: currency,
              bankAccounts: _bankAccounts?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bankAccounts';
        _bankAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CustomersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
