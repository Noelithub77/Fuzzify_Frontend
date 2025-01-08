// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultApiStruct extends BaseStruct {
  ResultApiStruct({
    List<ResultCaseStruct>? result,
    int? exact,
  })  : _result = result,
        _exact = exact;

  // "result" field.
  List<ResultCaseStruct>? _result;
  List<ResultCaseStruct> get result => _result ?? const [];
  set result(List<ResultCaseStruct>? val) => _result = val;

  void updateResult(Function(List<ResultCaseStruct>) updateFn) {
    updateFn(_result ??= []);
  }

  bool hasResult() => _result != null;

  // "exact" field.
  int? _exact;
  int get exact => _exact ?? 1;
  set exact(int? val) => _exact = val;

  void incrementExact(int amount) => exact = exact + amount;

  bool hasExact() => _exact != null;

  static ResultApiStruct fromMap(Map<String, dynamic> data) => ResultApiStruct(
        result: getStructList(
          data['result'],
          ResultCaseStruct.fromMap,
        ),
        exact: castToType<int>(data['exact']),
      );

  static ResultApiStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultApiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'result': _result?.map((e) => e.toMap()).toList(),
        'exact': _exact,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'result': serializeParam(
          _result,
          ParamType.DataStruct,
          isList: true,
        ),
        'exact': serializeParam(
          _exact,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResultApiStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultApiStruct(
        result: deserializeStructParam<ResultCaseStruct>(
          data['result'],
          ParamType.DataStruct,
          true,
          structBuilder: ResultCaseStruct.fromSerializableMap,
        ),
        exact: deserializeParam(
          data['exact'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResultApiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResultApiStruct &&
        listEquality.equals(result, other.result) &&
        exact == other.exact;
  }

  @override
  int get hashCode => const ListEquality().hash([result, exact]);
}

ResultApiStruct createResultApiStruct({
  int? exact,
}) =>
    ResultApiStruct(
      exact: exact,
    );
