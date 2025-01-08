import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'voicepopup_widget.dart' show VoicepopupWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class VoicepopupModel extends FlutterFlowModel<VoicepopupWidget> {
  ///  State fields for stateful widgets in this component.

  AudioRecorder? audioRecorder;
  String? out;
  FFUploadedFile recordedFileBytes1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String? voiceRecorded;
  FFUploadedFile recordedFileBytes2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Custom Action - convertAudioToUploaded] action in IconButton widget.
  FFUploadedFile? uploaded;
  // Stores action output result for [Backend Call - API (Vsearch)] action in IconButton widget.
  ApiCallResponse? vresult;
  // Stores action output result for [Backend Call - API (querryNew)] action in IconButton widget.
  ApiCallResponse? vResultList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
