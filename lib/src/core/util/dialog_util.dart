import 'package:flutter/material.dart';

class DialogUtil<T> {
  final BuildContext _context;

  const DialogUtil(this._context);

  Future<T?> openDialog(
      {required Widget child, bool barrierDismissable = true}) async {
    final _result = await showDialog<T>(
      barrierDismissible: barrierDismissable,
      context: _context,
      builder: (context) {
        return child;
      },
    );

    return _result;
  }

  Future<T?> bottomModal({
    required Widget child,
    bool isDismissible = true,
    bool enableDrag = true,
  }) async {
    final _result = await showModalBottomSheet<T>(
      context: _context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled: true,
      builder: (context) {
        // return child;
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: child,
          ),
        );
      },
    );

    return _result;
  }
}
