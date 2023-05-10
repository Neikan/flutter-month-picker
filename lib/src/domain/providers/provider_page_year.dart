// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:customizable_month_picker/src/domain/models/app_state_arrow_buttons.dart';
import 'package:customizable_month_picker/src/domain/models/app_state_page_limits.dart';

class ProviderPageYear extends ChangeNotifier {
  final AppAStatePageLimits _stateLimits = AppAStatePageLimits(0, 0);
  final AppStateArrowButtons _stateButtons = AppStateArrowButtons(true, true);

  AppAStatePageLimits get stateLimits => _stateLimits;
  AppStateArrowButtons get stateButtons => _stateButtons;

  void changePage(
    int limitDown,
    int limitUp,
    bool? isDown,
    bool? isUp,
  ) {
    _stateLimits
      ..down = limitDown
      ..up = limitUp;

    if (isDown != null && isUp != null) {
      _stateButtons
        ..isDown = isDown
        ..isUp = isUp;
    }

    notifyListeners();
  }
}
