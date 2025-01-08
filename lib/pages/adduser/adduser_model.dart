import '/backend/api_requests/api_calls.dart';
import '/components/noserver/noserver_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'adduser_widget.dart' show AdduserWidget;
import 'package:flutter/material.dart';

class AdduserModel extends FlutterFlowModel<AdduserWidget> {
  ///  Local state fields for this page.

  bool suggesting = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  String? _nameFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ageField widget.
  FocusNode? ageFieldFocusNode;
  TextEditingController? ageFieldTextController;
  String? Function(BuildContext, String?)? ageFieldTextControllerValidator;
  String? _ageFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Age is required';
    }

    return null;
  }

  // State field(s) for addressField widget.
  FocusNode? addressFieldFocusNode;
  TextEditingController? addressFieldTextController;
  String? Function(BuildContext, String?)? addressFieldTextControllerValidator;
  String? _addressFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Address is required';
    }

    return null;
  }

  // State field(s) for stationField widget.
  FocusNode? stationFieldFocusNode;
  TextEditingController? stationFieldTextController;
  String? Function(BuildContext, String?)? stationFieldTextControllerValidator;
  String? _stationFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Station is required';
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for crimeField widget.
  FocusNode? crimeFieldFocusNode;
  TextEditingController? crimeFieldTextController;
  String? Function(BuildContext, String?)? crimeFieldTextControllerValidator;
  String? _crimeFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Crime is required';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for dateBirthField widget.
  FocusNode? dateBirthFieldFocusNode;
  TextEditingController? dateBirthFieldTextController;
  String? Function(BuildContext, String?)?
      dateBirthFieldTextControllerValidator;
  String? _dateBirthFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for dateCrimeField widget.
  FocusNode? dateCrimeFieldFocusNode;
  TextEditingController? dateCrimeFieldTextController;
  String? Function(BuildContext, String?)?
      dateCrimeFieldTextControllerValidator;
  // State field(s) for aadharField widget.
  FocusNode? aadharFieldFocusNode;
  TextEditingController? aadharFieldTextController;
  String? Function(BuildContext, String?)? aadharFieldTextControllerValidator;
  String? _aadharFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Aadhar is required';
    }

    if (val.length < 12) {
      return 'Requires at least 12 characters.';
    }
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Add)] action in Container widget.
  ApiCallResponse? apiResult6ns;
  // Stores action output result for [Backend Call - API (Add)] action in Icon widget.
  ApiCallResponse? apiResult6nsCopy;

  @override
  void initState(BuildContext context) {
    nameFieldTextControllerValidator = _nameFieldTextControllerValidator;
    ageFieldTextControllerValidator = _ageFieldTextControllerValidator;
    addressFieldTextControllerValidator = _addressFieldTextControllerValidator;
    stationFieldTextControllerValidator = _stationFieldTextControllerValidator;
    crimeFieldTextControllerValidator = _crimeFieldTextControllerValidator;
    dateBirthFieldTextControllerValidator =
        _dateBirthFieldTextControllerValidator;
    aadharFieldTextControllerValidator = _aadharFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    ageFieldFocusNode?.dispose();
    ageFieldTextController?.dispose();

    addressFieldFocusNode?.dispose();
    addressFieldTextController?.dispose();

    stationFieldFocusNode?.dispose();
    stationFieldTextController?.dispose();

    crimeFieldFocusNode?.dispose();
    crimeFieldTextController?.dispose();

    dateBirthFieldFocusNode?.dispose();
    dateBirthFieldTextController?.dispose();

    dateCrimeFieldFocusNode?.dispose();
    dateCrimeFieldTextController?.dispose();

    aadharFieldFocusNode?.dispose();
    aadharFieldTextController?.dispose();
  }

  /// Action blocks.
  Future suggest(
    BuildContext context, {
    required String? name,
  }) async {
    ApiCallResponse? suggestionsBlock;

    suggestionsBlock = await SuggestCall.call(
      name: nameFieldTextController.text,
    );

    if ((suggestionsBlock.succeeded ?? true)) {
      FFAppState().suggestions = (suggestionsBlock.jsonBody ?? '');
    } else {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: const NoserverWidget(),
            ),
          );
        },
      );
    }
  }
}
