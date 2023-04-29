import 'package:flutter/material.dart';

extension OnDoubleAddition on double {
  double addValue(num value) {
    return this + value;
  }
}

class WidthConstraint {
  final BuildContext _context;
  static const _maxWithConstraint = 414.0;

  WidthConstraint(BuildContext context) : _context = context;

  /// gets device screen width with the provided context
  double get deviceWidth => MediaQuery.of(_context).size.width;

  /// gets device screen height with the provided context
  double get deviceHeight => MediaQuery.of(_context).size.height;

  /// gets the maximum width constaint. Default value is 500
  double get maxWidthConstraint => _maxWithConstraint;

  final _paddingConst = 20.0;

  /// gets content width which should be 95% of device screen width
  /// if device screen width is less than 500 and
  /// 80% of 500 if device screen width is greater than 500px
  double get contentWidth {
    return deviceWidth > _maxWithConstraint
        ? (_maxWithConstraint - (_paddingConst * 2))
        : (deviceWidth * .90);
  }

  /// gets content padding after evaluating device width, content width and specified max-constrants
  double get contentPadding => _paddingConst;

  Widget withHorizontalSymmetricalPadding({required Widget child}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: contentPadding),
      child: child,
    );
  }
}
