extension StringExt on String {
  String getFileExtension() {
    try {
      return split('.').last;
    } catch (e) {
      return '';
    }
  }

  String toPascalCase() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  bool isValidPhoneNumber() {
    // Regular expression pattern for a valid phone number
    final regex = RegExp(r'^\+?\d{9,}$');

    // Check if the phone number matches the pattern
    if (regex.hasMatch(this)) {
      return true; // Valid phone number
    } else {
      return false; // Invalid phone number
    }
  }

  bool isValidEmail() {
    // Regular expression pattern for a valid email
    final regex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$',
      caseSensitive: false,
      multiLine: false,
    );

    // Check if the email matches the pattern
    if (regex.hasMatch(this)) {
      return true; // Valid email
    } else {
      return false; // Invalid email
    }
  }

  String toPhoneNumberWithPrefix({String region = 'vi'}) {
    switch (region) {
      default:
        return '+84$this';
    }
  }
}
