import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {

  /// push named route
  Future<dynamic> push(String routeName, {Object? args}) {
    return Navigator.pushNamed(
      this,
      routeName,
      arguments: args,
    );
  }

  /// push replacement
  Future<dynamic> pushReplace(String routeName, {Object? args}) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: args,
    );
  }

  /// push and remove all previous routes
  Future<dynamic> pushAndRemoveAll(String routeName, {Object? args}) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      routeName,
      (route) => false,
      arguments: args,
    );
  }

  /// pop current screen
  void pop<T extends Object?>([T? result]) {
    Navigator.pop(this, result);
  }

  /// check if can pop
  bool canPop() {
    return Navigator.canPop(this);
  }
}


//context.push(AppRoutes.loginScreen);
//context.pushReplace(AppRoutes.layoutScreen);
//context.pushAndRemoveAll(AppRoutes.loginScreen);
// context.pop();
