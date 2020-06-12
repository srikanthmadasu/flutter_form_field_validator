# flutter_form_field_validator

The flutter-form-field-validator package comes with several common validations and removes the boiler plate code from your project.

## Features

- Contains several common validations
- Supports chaining of validators to write concise code
- Easy to use and removes boiler plate code from your project

## Version compatibility

See CHANGELOG for changes.

## Git hub

You can reference the git repo directly if you want:
```
git: https://github.com/srikanthmadasu/flutter_form_field_validator
```

## pub.dev link 

The follwing link has the details/examples needed to add this package to your flutter project.
```
https://pub.dev/packages/flutter_form_field_validator
```

## Example Project

```
TextFormField(
    validator: (value) {
        return FieldValidator('Abc')
            .minLength(1, 'min length is 1')
            .maxLength(10, 'max length is 10')
            .hasMinOneLowerCase('must have one lower case')
            .hasMinOneUpperCase('must have one upper case')
            .hasANumber('must have a number')
            .validate();
    },
    onChanged: (val) => {}
),
```

For more detailed examples please check example project in the `example` folder.
