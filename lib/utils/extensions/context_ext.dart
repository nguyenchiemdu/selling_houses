import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selling_houses/generated/l10n.dart';

extension BuildContextExtension on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  CupertinoTextThemeData get cupertinoTextTheme =>
      CupertinoTheme.of(this).textTheme;

  Size get screenSize => MediaQuery.of(this).size;

  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  Object? get arguments => ModalRoute.of(this)!.settings.arguments;

  void popToBottom<T>({T? result}) {
    while (Navigator.of(this).canPop()) {
      Navigator.of(this).pop(result);
    }
  }

  void pop({dynamic result}) {
    Navigator.pop(this, result);
  }

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }
}
