import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/couldnt_detect/couldnt_detect_widget.dart';
import '/components/failure/failure_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:record/record.dart';
import 'voicepopup_model.dart';
export 'voicepopup_model.dart';

class VoicepopupWidget extends StatefulWidget {
  const VoicepopupWidget({super.key});

  @override
  State<VoicepopupWidget> createState() => _VoicepopupWidgetState();
}

class _VoicepopupWidgetState extends State<VoicepopupWidget> {
  late VoicepopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoicepopupModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await startAudioRecording(
        context,
        audioRecorder: _model.audioRecorder ??= AudioRecorder(),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 267.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/4507bbb0616b7712f765a3a0053d1cab.gif',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Listening...',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Speak now to search',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 25.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                        await stopAudioRecording(
                          audioRecorder: _model.audioRecorder,
                          audioName: 'recordedFileBytes1',
                          onRecordingComplete: (audioFilePath, audioBytes) {
                            _model.out = audioFilePath;
                            _model.recordedFileBytes1 = audioBytes;
                          },
                        );

                        safeSetState(() {});
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 25.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        Icons.send,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await stopAudioRecording(
                          audioRecorder: _model.audioRecorder,
                          audioName: 'recordedFileBytes2',
                          onRecordingComplete: (audioFilePath, audioBytes) {
                            _model.voiceRecorded = audioFilePath;
                            _model.recordedFileBytes2 = audioBytes;
                          },
                        );

                        _model.uploaded = await actions.convertAudioToUploaded(
                          _model.voiceRecorded,
                        );
                        Navigator.pop(context);
                        _model.vresult = await VsearchCall.call(
                          rec: _model.uploaded,
                        );

                        if ((_model.vresult?.succeeded ?? true)) {
                          if (getJsonField(
                                (_model.vresult?.jsonBody ?? ''),
                                r'''$.name''',
                              ) !=
                              null) {
                            _model.vResultList = await QuerryNewCall.call(
                              name: getJsonField(
                                (_model.vresult?.jsonBody ?? ''),
                                r'''$.name''',
                              ).toString(),
                            );

                            if ((_model.vResultList?.succeeded ?? true)) {
                              FFAppState().searching = true;
                              FFAppState().textSearching = false;
                              FFAppState().searches =
                                  ResultApiStruct.maybeFromMap(
                                          (_model.vResultList?.jsonBody ?? ''))!
                                      .result
                                      .toList()
                                      .cast<ResultCaseStruct>();
                              safeSetState(() {});
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const FailureWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          } else {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: const CouldntDetectWidget(),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          }
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const CouldntDetectWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        }

                        safeSetState(() {});
                      },
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
