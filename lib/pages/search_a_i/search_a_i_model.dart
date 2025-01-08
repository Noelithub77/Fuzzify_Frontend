import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_a_i_widget.dart' show SearchAIWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class SearchAIModel extends FlutterFlowModel<SearchAIWidget> {
  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (querry)] action in Icon widget.
  ApiCallResponse? result;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
