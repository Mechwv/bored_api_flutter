import 'package:bored_api/presentation/pages/home/bloc/home/home_bloc.dart';
import 'package:bored_api/presentation/widgets/dropdown_form.dart';
import 'package:bored_api/presentation/widgets/text_form_field.dart';
import 'package:bored_api/presentation/widgets/text_input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final accController = TextEditingController();
  final typeController = TextEditingController();
  final partController = TextEditingController();
  final priceController = TextEditingController();
  String type = '';

  @override
  Widget build(BuildContext context) {
    // final HomeBloc _homeBloc = BlocProvider.of<HomeBloc>(context);

    callBack(String chosenType) {
      type = chosenType;
    }

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
              FormInputText('[0.0, 1.0]', accController)),
          TextInputForm(
              'Type',
              'Type of the activity',
              DropdownForm(
                callBack: callBack,
              )),
          TextInputForm(
              'Participants',
              'The number of people that this activity could involve',
              FormInputText('[0, n]', partController)),
          TextInputForm(
              'Price',
              'A factor describing the cost of the event with zero being free',
              FormInputText('[0.0, 1]', priceController)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                // if (_formKey.currentState!.validate()) {
                // Process data.
                // }

                // _homeBloc.add(GetActivityEvent(
                //     price: double.parse(priceController.text),
                //     accessibility: double.parse(accController.text),
                //     type: type,
                //     participants: int.parse(partController.text)));
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
