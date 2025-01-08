import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  DateTime? datePicked1;
  // State field(s) for dateBirthField widget.
  FocusNode? dateBirthFieldFocusNode;
  TextEditingController? dateBirthFieldTextController;
  String? Function(BuildContext, String?)?
      dateBirthFieldTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for dateCrimeField widget.
  FocusNode? dateCrimeFieldFocusNode;
  TextEditingController? dateCrimeFieldTextController;
  String? Function(BuildContext, String?)?
      dateCrimeFieldTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    dateBirthFieldFocusNode?.dispose();
    dateBirthFieldTextController?.dispose();

    dateCrimeFieldFocusNode?.dispose();
    dateCrimeFieldTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController6?.dispose();
  }
}
