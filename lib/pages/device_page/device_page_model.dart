import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/display_received_data/display_received_data_widget.dart';
import '/widgets/strength_indicator/strength_indicator_widget.dart';
import 'device_page_widget.dart' show DevicePageWidget;
import 'package:flutter/material.dart';

class DevicePageModel extends FlutterFlowModel<DevicePageWidget> {
  ///  Local state fields for this page.

  int? currentRssi;

  String? receivedValue;

  ///  State fields for stateful widgets in this page.

  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for DisplayReceivedData component.
  late DisplayReceivedDataModel displayReceivedDataModel;

  @override
  void initState(BuildContext context) {
    strengthIndicatorModel =
        createModel(context, () => StrengthIndicatorModel());
    displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());
  }

  @override
  void dispose() {
    strengthIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    displayReceivedDataModel.dispose();
  }
}
