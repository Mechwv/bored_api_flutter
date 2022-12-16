import 'package:bored_api/presentation/widgets/dropdown_form.dart';
import 'package:bored_api/presentation/widgets/text_form_field.dart';
import 'package:bored_api/presentation/widgets/text_input_form.dart';
import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Divider(
            height: 10,
          ),
          TextInputForm(
              'Accessibility',
              'A factor describing how possible an event is to do with zero being the most accessible',
              FormInputText('[0.0, 1.0]')),
          TextInputForm('Type', 'Type of the activity', DropdownForm()),
          TextInputForm('Participants', 'The number of people that this activity could involve', FormInputText('[0, n]')),
          TextInputForm('Price', 'A factor describing the cost of the event with zero being free', FormInputText('[0.0, 1]')),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
