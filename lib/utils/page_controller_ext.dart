import 'package:flutter/material.dart';

extension NextPage on PageController {
  void appNextPage() {
    nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void appPreviousPage() {
    previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
