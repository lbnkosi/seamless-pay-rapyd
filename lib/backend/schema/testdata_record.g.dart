// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testdata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TestdataRecord> _$testdataRecordSerializer =
    new _$TestdataRecordSerializer();

class _$TestdataRecordSerializer
    implements StructuredSerializer<TestdataRecord> {
  @override
  final Iterable<Type> types = const [TestdataRecord, _$TestdataRecord];
  @override
  final String wireName = 'TestdataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TestdataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.country;
    if (value != null) {
      result
        ..add('country')
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
  TestdataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TestdataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
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

class _$TestdataRecord extends TestdataRecord {
  @override
  final String? country;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TestdataRecord([void Function(TestdataRecordBuilder)? updates]) =>
      (new TestdataRecordBuilder()..update(updates))._build();

  _$TestdataRecord._({this.country, this.ffRef}) : super._();

  @override
  TestdataRecord rebuild(void Function(TestdataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestdataRecordBuilder toBuilder() =>
      new TestdataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestdataRecord &&
        country == other.country &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, country.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestdataRecord')
          ..add('country', country)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TestdataRecordBuilder
    implements Builder<TestdataRecord, TestdataRecordBuilder> {
  _$TestdataRecord? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TestdataRecordBuilder() {
    TestdataRecord._initializeBuilder(this);
  }

  TestdataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestdataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestdataRecord;
  }

  @override
  void update(void Function(TestdataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestdataRecord build() => _build();

  _$TestdataRecord _build() {
    final _$result =
        _$v ?? new _$TestdataRecord._(country: country, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
