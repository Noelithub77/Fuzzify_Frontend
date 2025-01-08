// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterStruct extends BaseStruct {
  FilterStruct({
    int? minAge,
    int? maxAge,
    DateTime? minDate,
    DateTime? maxDate,
    String? gender,
    String? station,
  })  : _minAge = minAge,
        _maxAge = maxAge,
        _minDate = minDate,
        _maxDate = maxDate,
        _gender = gender,
        _station = station;

  // "minAge" field.
  int? _minAge;
  int get minAge => _minAge ?? 0;
  set minAge(int? val) => _minAge = val;

  void incrementMinAge(int amount) => minAge = minAge + amount;

  bool hasMinAge() => _minAge != null;

  // "maxAge" field.
  int? _maxAge;
  int get maxAge => _maxAge ?? 0;
  set maxAge(int? val) => _maxAge = val;

  void incrementMaxAge(int amount) => maxAge = maxAge + amount;

  bool hasMaxAge() => _maxAge != null;

  // "minDate" field.
  DateTime? _minDate;
  DateTime? get minDate => _minDate;
  set minDate(DateTime? val) => _minDate = val;

  bool hasMinDate() => _minDate != null;

  // "maxDate" field.
  DateTime? _maxDate;
  DateTime? get maxDate => _maxDate;
  set maxDate(DateTime? val) => _maxDate = val;

  bool hasMaxDate() => _maxDate != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "station" field.
  String? _station;
  String get station => _station ?? '';
  set station(String? val) => _station = val;

  bool hasStation() => _station != null;

  static FilterStruct fromMap(Map<String, dynamic> data) => FilterStruct(
        minAge: castToType<int>(data['minAge']),
        maxAge: castToType<int>(data['maxAge']),
        minDate: data['minDate'] as DateTime?,
        maxDate: data['maxDate'] as DateTime?,
        gender: data['gender'] as String?,
        station: data['station'] as String?,
      );

  static FilterStruct? maybeFromMap(dynamic data) =>
      data is Map ? FilterStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'minAge': _minAge,
        'maxAge': _maxAge,
        'minDate': _minDate,
        'maxDate': _maxDate,
        'gender': _gender,
        'station': _station,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'minAge': serializeParam(
          _minAge,
          ParamType.int,
        ),
        'maxAge': serializeParam(
          _maxAge,
          ParamType.int,
        ),
        'minDate': serializeParam(
          _minDate,
          ParamType.DateTime,
        ),
        'maxDate': serializeParam(
          _maxDate,
          ParamType.DateTime,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'station': serializeParam(
          _station,
          ParamType.String,
        ),
      }.withoutNulls;

  static FilterStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterStruct(
        minAge: deserializeParam(
          data['minAge'],
          ParamType.int,
          false,
        ),
        maxAge: deserializeParam(
          data['maxAge'],
          ParamType.int,
          false,
        ),
        minDate: deserializeParam(
          data['minDate'],
          ParamType.DateTime,
          false,
        ),
        maxDate: deserializeParam(
          data['maxDate'],
          ParamType.DateTime,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        station: deserializeParam(
          data['station'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FilterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterStruct &&
        minAge == other.minAge &&
        maxAge == other.maxAge &&
        minDate == other.minDate &&
        maxDate == other.maxDate &&
        gender == other.gender &&
        station == other.station;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([minAge, maxAge, minDate, maxDate, gender, station]);
}

FilterStruct createFilterStruct({
  int? minAge,
  int? maxAge,
  DateTime? minDate,
  DateTime? maxDate,
  String? gender,
  String? station,
}) =>
    FilterStruct(
      minAge: minAge,
      maxAge: maxAge,
      minDate: minDate,
      maxDate: maxDate,
      gender: gender,
      station: station,
    );
