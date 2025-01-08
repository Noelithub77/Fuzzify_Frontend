import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _oldSearches = prefs
              .getStringList('ff_oldSearches')
              ?.map((x) {
                try {
                  return ResultCaseStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _oldSearches;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _vrec = '';
  String get vrec => _vrec;
  set vrec(String value) {
    _vrec = value;
  }

  List<ResultCaseStruct> _oldSearches = [];
  List<ResultCaseStruct> get oldSearches => _oldSearches;
  set oldSearches(List<ResultCaseStruct> value) {
    _oldSearches = value;
    prefs.setStringList(
        'ff_oldSearches', value.map((x) => x.serialize()).toList());
  }

  void addToOldSearches(ResultCaseStruct value) {
    oldSearches.add(value);
    prefs.setStringList(
        'ff_oldSearches', _oldSearches.map((x) => x.serialize()).toList());
  }

  void removeFromOldSearches(ResultCaseStruct value) {
    oldSearches.remove(value);
    prefs.setStringList(
        'ff_oldSearches', _oldSearches.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOldSearches(int index) {
    oldSearches.removeAt(index);
    prefs.setStringList(
        'ff_oldSearches', _oldSearches.map((x) => x.serialize()).toList());
  }

  void updateOldSearchesAtIndex(
    int index,
    ResultCaseStruct Function(ResultCaseStruct) updateFn,
  ) {
    oldSearches[index] = updateFn(_oldSearches[index]);
    prefs.setStringList(
        'ff_oldSearches', _oldSearches.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOldSearches(int index, ResultCaseStruct value) {
    oldSearches.insert(index, value);
    prefs.setStringList(
        'ff_oldSearches', _oldSearches.map((x) => x.serialize()).toList());
  }

  bool _searching = false;
  bool get searching => _searching;
  set searching(bool value) {
    _searching = value;
  }

  bool _filtering = false;
  bool get filtering => _filtering;
  set filtering(bool value) {
    _filtering = value;
  }

  FilterStruct _filter = FilterStruct.fromSerializableMap(jsonDecode(
      '{\"minAge\":\"0\",\"maxAge\":\"100\",\"minDate\":\"-19800000\",\"gender\":\"All\"}'));
  FilterStruct get filter => _filter;
  set filter(FilterStruct value) {
    _filter = value;
  }

  void updateFilterStruct(Function(FilterStruct) updateFn) {
    updateFn(_filter);
  }

  bool _textSearching = false;
  bool get textSearching => _textSearching;
  set textSearching(bool value) {
    _textSearching = value;
  }

  bool _changing = false;
  bool get changing => _changing;
  set changing(bool value) {
    _changing = value;
  }

  dynamic _suggestions;
  dynamic get suggestions => _suggestions;
  set suggestions(dynamic value) {
    _suggestions = value;
  }

  bool _searched = false;
  bool get searched => _searched;
  set searched(bool value) {
    _searched = value;
  }

  List<ResultCaseStruct> _searches = [];
  List<ResultCaseStruct> get searches => _searches;
  set searches(List<ResultCaseStruct> value) {
    _searches = value;
  }

  void addToSearches(ResultCaseStruct value) {
    searches.add(value);
  }

  void removeFromSearches(ResultCaseStruct value) {
    searches.remove(value);
  }

  void removeAtIndexFromSearches(int index) {
    searches.removeAt(index);
  }

  void updateSearchesAtIndex(
    int index,
    ResultCaseStruct Function(ResultCaseStruct) updateFn,
  ) {
    searches[index] = updateFn(_searches[index]);
  }

  void insertAtIndexInSearches(int index, ResultCaseStruct value) {
    searches.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
