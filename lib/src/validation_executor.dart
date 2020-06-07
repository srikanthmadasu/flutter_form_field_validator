import 'validation_functions.dart';
import 'validator_constants.dart';

class ValidationExecutor {
  static String validate(var value, List validators) {
    for (var i = 0; i < validators.length; i++) {
      var validator = validators[i];
      String operation = validator[ValidationConstants.validator];
      String error = validator[ValidationConstants.errorMsg];

      if (operation == ValidationConstants.required &&
          ValidationFunctions.isEmpty(value)) {
        return error;
      } else if (operation == ValidationConstants.minLength &&
          ValidationFunctions.minLength(
              value, validator[ValidationConstants.length])) {
        return error;
      } else if (operation == ValidationConstants.maxLength &&
          ValidationFunctions.maxLength(
              value, validator[ValidationConstants.length])) {
        return error;
      } else if (operation == ValidationConstants.numeric &&
          ValidationFunctions.numeric(value)) {
        return error;
      } else if (operation == ValidationConstants.minNumber &&
          ValidationFunctions.minNumber(
              value, validator[ValidationConstants.minNumber])) {
        return error;
      } else if (operation == ValidationConstants.maxNumber &&
          ValidationFunctions.maxNumber(
              value, validator[ValidationConstants.maxNumber])) {
        return error;
      } else if (operation == ValidationConstants.matches &&
          !ValidationFunctions.matches(
              value, validator[ValidationConstants.matchValue])) {
        return error;
      } else if (operation == ValidationConstants.pattern &&
          !ValidationFunctions.patternMatch(
              value, validator[ValidationConstants.pattern])) {
        return error;
      } else if (operation == ValidationConstants.email &&
          !ValidationFunctions.email(value)) {
        return error;
      } else if (operation == ValidationConstants.alphaNumeric &&
          !ValidationFunctions.alphaNumeric(value)) {
        return error;
      } else if (operation == ValidationConstants.alphaNumericSpace &&
          !ValidationFunctions.alphaNumericSpace(value)) {
        return error;
      } else if (operation == ValidationConstants.hasMinOneLowerCase &&
          !ValidationFunctions.hasMinOneLowerCase(value)) {
        return error;
      } else if (operation == ValidationConstants.hasMinOneUpperCase &&
          !ValidationFunctions.hasMinOneUpperCase(value)) {
        return error;
      } else if (operation == ValidationConstants.hasANumber &&
          !ValidationFunctions.hasANumber(value)) {
        return error;
      } else if (operation == ValidationConstants.containsAtLeastOneChar &&
          !ValidationFunctions.containsAtLeastOneChar(
            value,
            validator[ValidationConstants.charList],
          )) {
        return error;
      } else if (operation == ValidationConstants.doesNotContainAnyChar &&
          !ValidationFunctions.doesNotContainAnyChar(
            value,
            validator[ValidationConstants.charList],
          )) {
        return error;
      }
    }
    return null;
  }
}
