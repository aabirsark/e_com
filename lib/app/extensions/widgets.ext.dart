import 'package:flutter/material.dart';

extension RxSizedBoxs on int {
  // creates an sized box and adds height to it
  Widget get boxV => SizedBox(
        height: toDouble(),
      );

  // creates an sized box and adds Width to it
  Widget get boxH => SizedBox(
        width: toDouble(),
      );
}

extension HelpingWidgets on Widget {
  /// Create an expanded widget
  Widget get expanded => Expanded(child: this);

  /// On tap - gesture detector
  Widget onTap(VoidCallback callback) {
    return GestureDetector(onTap: callback, child: this);
  }

  /// centers widget
  Widget get center => Center(
        child: this,
      );
}
