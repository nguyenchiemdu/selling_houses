import 'package:intl/intl.dart';

extension NumberExtension on int {
  String get msToMmss {
    final minutes = (this / (60 * 1000) % 60).floor();
    final seconds = (this % 60000 / 1000).floor();
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  String get mmss {
    final minutes = (this / 60).floor();
    final seconds = (this - (minutes * 60)).floor();
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}s';
  }

  String get thousand {
    final numberFormatter = NumberFormat.decimalPattern();
    return numberFormatter.format(this);
  }
}
