bool isNullOrEmpty(Object? object) {
  if (object == null) {
    return true;
  }
  if (object is String) {
    return object.trim().isEmpty;
  }
  if (object is Iterable) {
    return object.isEmpty;
  }
  if (object is Map) {
    return object.isEmpty;
  }
  return false;
}

extension StringExtension on String {
  String toCapitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toCamelCase() {
    var result = this[0].toUpperCase();
    for (int i = 1; i < length; i++) {
      if (this[i - 1] == " ") {
        result = result + this[i].toUpperCase();
      } else {
        result = result + this[i];
      }
    }
    return result;
  }

  //SECTION - Validation
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidYear {
    // Assuming the date is in the format 'YYYY-MM-DD'
    if (length != 10) {
      // Date should have exactly 10 characters (e.g., '2023-08-06')
      return false;
    }

    try {
      int yearOfBirth = int.parse(substring(0, 4));
      DateTime now = DateTime.now();

      if ((now.year - yearOfBirth) < 55) {
        return false;
      }
      return true;
    } catch (e) {
      return false; // Parsing error occurred, invalid year
    }
  }

  bool get isPasswordLength {
    if (length < 8) {
      // Date should have exactly 8 characters
      return true;
    }
    return false;
  }

  bool get isValidNIK {
    if (length > 14) {
      // Date should have exactly 10 characters (e.g., '2023-08-06')
      return true;
    }
    return false;
  }
}
