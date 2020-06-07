library flutter_form_field_validator;

import 'src/validation_executor.dart';
import 'src/validator_constants.dart';

class FieldValidator {
  var _value;

  List _validators = [];

  FieldValidator(var value) {
    this._value = value;
  }

  String validate() {
    return ValidationExecutor.validate(_value, _validators);
  }

  FieldValidator required(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.required,
      ValidationConstants.errorMsg: error
    });
    return this;
  }

  FieldValidator minLength(int len, String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.minLength,
      ValidationConstants.length: len,
      ValidationConstants.errorMsg: error
    });
    return this;
  }

  FieldValidator maxLength(int len, String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.maxLength,
      ValidationConstants.length: len,
      ValidationConstants.errorMsg: error
    });
    return this;
  }

  FieldValidator numeric(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.numeric,
      ValidationConstants.errorMsg: error
    });
    return this;
  }

  FieldValidator minNumber(String error, int minValue) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.minNumber,
      ValidationConstants.errorMsg: error,
      ValidationConstants.minNumber: minValue,
    });
    return this;
  }

  FieldValidator maxNumber(String error, int maxValue) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.maxNumber,
      ValidationConstants.errorMsg: error,
      ValidationConstants.maxNumber: maxValue,
    });
    return this;
  }

  FieldValidator matches(String error, var matchValue) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.matches,
      ValidationConstants.errorMsg: error,
      ValidationConstants.matchValue: matchValue,
    });
    return this;
  }

  FieldValidator patternMatch(String error, String pattern) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.pattern,
      ValidationConstants.errorMsg: error,
      ValidationConstants.pattern: pattern,
    });
    return this;
  }

  FieldValidator email(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.email,
      ValidationConstants.errorMsg: error,
    });
    return this;
  }

  FieldValidator alphaNumeric(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.alphaNumeric,
      ValidationConstants.errorMsg: error,
    });
    return this;
  }

  FieldValidator alphaNumericSpace(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.alphaNumericSpace,
      ValidationConstants.errorMsg: error,
    });
    return this;
  }

  FieldValidator hasMinOneUpperCase(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.hasMinOneUpperCase,
      ValidationConstants.errorMsg: error,
    });
    return this;
  }

  FieldValidator hasMinOneLowerCase(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.hasMinOneLowerCase,
      ValidationConstants.errorMsg: error,
    });
    return this;
  }

  FieldValidator hasANumber(String error) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.hasANumber,
      ValidationConstants.errorMsg: error,
    });
    return this;
  }

  FieldValidator containsAtLeastOneChar(String error, List charList) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.containsAtLeastOneChar,
      ValidationConstants.errorMsg: error,
      ValidationConstants.charList: charList,
    });
    return this;
  }

  FieldValidator doesNotContainAnyChar(String error, List charList) {
    _validators.add({
      ValidationConstants.validator: ValidationConstants.doesNotContainAnyChar,
      ValidationConstants.errorMsg: error,
      ValidationConstants.charList: charList,
    });
    return this;
  }
}
