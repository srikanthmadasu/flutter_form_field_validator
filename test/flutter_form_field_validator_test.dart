import 'package:flutter_form_field_validator/flutter_form_field_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Smoke test for FieldValidator ', () {
    expect(FieldValidator(null).required('error').validate(), 'error');
    expect(FieldValidator('').required('error').validate(), 'error');
    expect(FieldValidator(' ').required('error').validate(), 'error');
    expect(FieldValidator('Abc').required('error').validate(), null);

    expect(FieldValidator('Abc').minLength(5, 'error').validate(), 'error');
    expect(FieldValidator('abcdefg').minLength(5, 'error').validate(), null);

    expect(FieldValidator('Abc').maxLength(5, 'error').validate(), null);
    expect(FieldValidator('abcdefg').maxLength(5, 'error').validate(), 'error');

    expect(FieldValidator('abc').matches('error', 'abc').validate(), null);
    expect(
        FieldValidator('abcdefg').matches('error', 'acb').validate(), 'error');

    expect(FieldValidator('abc12').alphaNumeric('error').validate(), null);
    expect(FieldValidator('abc12 ').alphaNumeric('error').validate(), 'error');
    expect(FieldValidator('abc@').alphaNumeric('error').validate(), 'error');
    expect(FieldValidator('abc').alphaNumeric('error').validate(), null);
    expect(FieldValidator('12').alphaNumeric('error').validate(), null);

    expect(FieldValidator('abc12').alphaNumericSpace('error').validate(), null);
    expect(
        FieldValidator('abc12 ').alphaNumericSpace('error').validate(), null);
    expect(
        FieldValidator('abc@').alphaNumericSpace('error').validate(), 'error');
    expect(FieldValidator('abc').alphaNumericSpace('error').validate(), null);
    expect(FieldValidator('12').alphaNumericSpace('error').validate(), null);
    expect(FieldValidator(' ').alphaNumericSpace('error').validate(), null);

    expect(FieldValidator('abc12').hasMinOneUpperCase('error').validate(),
        'error');
    expect(
        FieldValidator('abc12A').hasMinOneUpperCase('error').validate(), null);

    expect(
        FieldValidator('abcA12').hasMinOneLowerCase('error').validate(), null);
    expect(
        FieldValidator('12A').hasMinOneLowerCase('error').validate(), 'error');

    expect(FieldValidator('abc12').hasANumber('error').validate(), null);
    expect(FieldValidator('abcA').hasANumber('error').validate(), 'error');

    expect(
        FieldValidator('abc12')
            .containsAtLeastOneChar('error', ['a', 'b']).validate(),
        null);
    expect(
        FieldValidator('abc12')
            .containsAtLeastOneChar('error', ['a', 'x']).validate(),
        null);
    expect(
        FieldValidator('abc12')
            .containsAtLeastOneChar('error', ['x', 'y']).validate(),
        'error');

    expect(
        FieldValidator('abc12')
            .doesNotContainAnyChar('error', ['a', 'b']).validate(),
        'error');
    expect(
        FieldValidator('abc12')
            .doesNotContainAnyChar('error', ['a', 'x']).validate(),
        'error');
    expect(
        FieldValidator('abc12')
            .doesNotContainAnyChar('error', ['x', 'y']).validate(),
        null);

    expect(FieldValidator('abc12').email('error').validate(), 'error');
    expect(FieldValidator('test@gmail.com').email('error').validate(), null);
    expect(
        FieldValidator('test@gmail.com.1').email('error').validate(), 'error');
  });
}
