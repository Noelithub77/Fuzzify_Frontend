import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filters_widget.dart' show FiltersWidget;
import 'package:flutter/material.dart';

class FiltersModel extends FlutterFlowModel<FiltersWidget> {
  ///  Local state fields for this component.

  List<String> stations = [];
  void addToStations(String item) => stations.add(item);
  void removeFromStations(String item) => stations.remove(item);
  void removeAtIndexFromStations(int index) => stations.removeAt(index);
  void insertAtIndexInStations(int index, String item) =>
      stations.insert(index, item);
  void updateStationsAtIndex(int index, Function(String) updateFn) =>
      stations[index] = updateFn(stations[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for minAgeField widget.
  FocusNode? minAgeFieldFocusNode;
  TextEditingController? minAgeFieldTextController;
  String? Function(BuildContext, String?)? minAgeFieldTextControllerValidator;
  // State field(s) for maxAgeField widget.
  FocusNode? maxAgeFieldFocusNode;
  TextEditingController? maxAgeFieldTextController;
  String? Function(BuildContext, String?)? maxAgeFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked1;
  // State field(s) for startDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for endDate widget.
  FocusNode? endDateFocusNode;
  TextEditingController? endDateTextController;
  String? Function(BuildContext, String?)? endDateTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    minAgeFieldFocusNode?.dispose();
    minAgeFieldTextController?.dispose();

    maxAgeFieldFocusNode?.dispose();
    maxAgeFieldTextController?.dispose();

    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    endDateFocusNode?.dispose();
    endDateTextController?.dispose();
  }
}
