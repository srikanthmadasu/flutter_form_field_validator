import 'package:flutter_form_field_validator/flutter_form_field_validator.dart';

void main() async {
  FieldValidator('Abc')
      .minLength(1, 'min length is 1')
      .maxLength(10, 'max length is 10')
      .hasMinOneLowerCase('must have one lower case')
      .hasMinOneUpperCase('must have one upper case')
      .hasANumber('must have a number')
      .validate();

  FieldValidator('1234')
      .numeric('must be numeric')
      .minNumber('min value is 100', 100)
      .maxNumber('max value is 10000', 10000)
      .validate();

  FieldValidator(1234)
      .minNumber('min value is 100', 100)
      .maxNumber('max value is 10000', 10000)
      .validate();

  FieldValidator('test@gmail.com').email('not a valid email').validate();

  FieldValidator('John Doe')
      .alphaNumericSpace('Must ber alpha numeric space only')
      .maxLength(100, 'max length is 100')
      .validate();

  FieldValidator('Alphabets1234567890')
      .alphaNumeric('Must ber alpha numeric only')
      .maxLength(100, 'max length is 100')
      .validate();

  FieldValidator('abc12')
      .alphaNumeric('Must ber alpha numeric only')
      .containsAtLeastOneChar('error', ['x', 'y']).validate();

  FieldValidator('abc12')
      .alphaNumeric('Must ber alpha numeric only')
      .doesNotContainAnyChar('error', ['a', 'b']).validate();

  FieldValidator('text1').matches('Texts Does not match', 'text2').validate();
}
