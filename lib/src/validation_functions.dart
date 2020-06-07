class ValidationFunctions {
  static bool isEmpty(String value) {
    return value == null || value.isEmpty;
  }

  static bool minLength(String value, int len) {
    return value.length < len;
  }

  static bool maxLength(String value, int len) {
    return value.length > len;
  }

  static bool numeric(String value) {
    try {
      int.parse(value);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool minNumber(int value, int minValue) {
    return value < minValue;
  }

  static bool maxNumber(int value, int maxValue) {
    return value > maxValue;
  }

  static bool matches(var value, var matchValue) {
    return value == matchValue;
  }

  static bool patternMatch(String value, String pattern) {
    Pattern pattern = r'${pattern}';
    RegExp regex = new RegExp(pattern);
    return regex.hasMatch(value);
  }

  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static bool email(String value) {
    return _emailRegex.hasMatch(value);
  }

  static final RegExp _alphaNumericRegex = RegExp(r'^[a-zA-Z0-9]+$');
  static bool alphaNumeric(String value) {
    return _alphaNumericRegex.hasMatch(value);
  }

  static final RegExp _alphaNumericSpaceRegex = RegExp(r'^[a-zA-Z0-9 ]+$');
  static bool alphaNumericSpace(String value) {
    return _alphaNumericSpaceRegex.hasMatch(value);
  }

  static bool hasMinOneUpperCase(String value) {
    return value != value.toLowerCase();
  }

  static bool hasMinOneLowerCase(String value) {
    return value != value.toUpperCase();
  }

  static final RegExp _hasANumberRegex = RegExp(r'[0-9]');
  static bool hasANumber(String value) {
    return _hasANumberRegex.hasMatch(value);
  }

  static bool containsAtLeastOneChar(String value, List charList) {
    for (var i = 0; i < charList.length; i++) {
      if (value.contains(charList[i].toString())) return true;
    }
    return false;
  }

  static bool doesNotContainAnyChar(String value, List charList) {
    return !containsAtLeastOneChar(value, charList);
  }
}
