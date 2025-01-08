// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultCaseStruct extends BaseStruct {
  ResultCaseStruct({
    String? name,
    int? age,
    String? gender,
    String? address,
    String? crime,
    String? aadhaar,
    String? id,
    String? station,
    String? doc,
    String? dob,
    String? transName,
    String? type,
  })  : _name = name,
        _age = age,
        _gender = gender,
        _address = address,
        _crime = crime,
        _aadhaar = aadhaar,
        _id = id,
        _station = station,
        _doc = doc,
        _dob = dob,
        _transName = transName,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;

  void incrementAge(int amount) => age = age + amount;

  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "crime" field.
  String? _crime;
  String get crime => _crime ?? '';
  set crime(String? val) => _crime = val;

  bool hasCrime() => _crime != null;

  // "aadhaar" field.
  String? _aadhaar;
  String get aadhaar => _aadhaar ?? '';
  set aadhaar(String? val) => _aadhaar = val;

  bool hasAadhaar() => _aadhaar != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "station" field.
  String? _station;
  String get station => _station ?? '';
  set station(String? val) => _station = val;

  bool hasStation() => _station != null;

  // "doc" field.
  String? _doc;
  String get doc => _doc ?? '';
  set doc(String? val) => _doc = val;

  bool hasDoc() => _doc != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  set dob(String? val) => _dob = val;

  bool hasDob() => _dob != null;

  // "trans_name" field.
  String? _transName;
  String get transName => _transName ?? '';
  set transName(String? val) => _transName = val;

  bool hasTransName() => _transName != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static ResultCaseStruct fromMap(Map<String, dynamic> data) =>
      ResultCaseStruct(
        name: data['name'] as String?,
        age: castToType<int>(data['age']),
        gender: data['gender'] as String?,
        address: data['address'] as String?,
        crime: data['crime'] as String?,
        aadhaar: data['aadhaar'] as String?,
        id: data['id'] as String?,
        station: data['station'] as String?,
        doc: data['doc'] as String?,
        dob: data['dob'] as String?,
        transName: data['trans_name'] as String?,
        type: data['type'] as String?,
      );

  static ResultCaseStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultCaseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'age': _age,
        'gender': _gender,
        'address': _address,
        'crime': _crime,
        'aadhaar': _aadhaar,
        'id': _id,
        'station': _station,
        'doc': _doc,
        'dob': _dob,
        'trans_name': _transName,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'crime': serializeParam(
          _crime,
          ParamType.String,
        ),
        'aadhaar': serializeParam(
          _aadhaar,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'station': serializeParam(
          _station,
          ParamType.String,
        ),
        'doc': serializeParam(
          _doc,
          ParamType.String,
        ),
        'dob': serializeParam(
          _dob,
          ParamType.String,
        ),
        'trans_name': serializeParam(
          _transName,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResultCaseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultCaseStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        crime: deserializeParam(
          data['crime'],
          ParamType.String,
          false,
        ),
        aadhaar: deserializeParam(
          data['aadhaar'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        station: deserializeParam(
          data['station'],
          ParamType.String,
          false,
        ),
        doc: deserializeParam(
          data['doc'],
          ParamType.String,
          false,
        ),
        dob: deserializeParam(
          data['dob'],
          ParamType.String,
          false,
        ),
        transName: deserializeParam(
          data['trans_name'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResultCaseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultCaseStruct &&
        name == other.name &&
        age == other.age &&
        gender == other.gender &&
        address == other.address &&
        crime == other.crime &&
        aadhaar == other.aadhaar &&
        id == other.id &&
        station == other.station &&
        doc == other.doc &&
        dob == other.dob &&
        transName == other.transName &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        age,
        gender,
        address,
        crime,
        aadhaar,
        id,
        station,
        doc,
        dob,
        transName,
        type
      ]);
}

ResultCaseStruct createResultCaseStruct({
  String? name,
  int? age,
  String? gender,
  String? address,
  String? crime,
  String? aadhaar,
  String? id,
  String? station,
  String? doc,
  String? dob,
  String? transName,
  String? type,
}) =>
    ResultCaseStruct(
      name: name,
      age: age,
      gender: gender,
      address: address,
      crime: crime,
      aadhaar: aadhaar,
      id: id,
      station: station,
      doc: doc,
      dob: dob,
      transName: transName,
      type: type,
    );
