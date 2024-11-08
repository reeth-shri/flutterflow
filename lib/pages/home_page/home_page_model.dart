import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/strength_indicator/strength_indicator_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isFetchingDevices = false;

  bool isBluetoothEnabled = false;

  List<BTDevicesStruct> foundDevices = [];
  void addToFoundDevices(BTDevicesStruct item) => foundDevices.add(item);
  void removeFromFoundDevices(BTDevicesStruct item) =>
      foundDevices.remove(item);
  void removeAtIndexFromFoundDevices(int index) => foundDevices.removeAt(index);
  void insertAtIndexInFoundDevices(int index, BTDevicesStruct item) =>
      foundDevices.insert(index, item);
  void updateFoundDevicesAtIndex(
          int index, Function(BTDevicesStruct) updateFn) =>
      foundDevices[index] = updateFn(foundDevices[index]);

  BTDevicesStruct? connectedDevices;
  void updateConnectedDevicesStruct(Function(BTDevicesStruct) updateFn) {
    updateFn(connectedDevices ??= BTDevicesStruct());
  }

  bool? isFetchingConnectedDevices = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel1;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel2;

  @override
  void initState(BuildContext context) {
    strengthIndicatorModel1 =
        createModel(context, () => StrengthIndicatorModel());
    strengthIndicatorModel2 =
        createModel(context, () => StrengthIndicatorModel());
  }

  @override
  void dispose() {
    strengthIndicatorModel1.dispose();
    strengthIndicatorModel2.dispose();
  }
}
