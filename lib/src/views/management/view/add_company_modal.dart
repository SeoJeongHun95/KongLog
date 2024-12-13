import 'package:flutter/material.dart';

class AddCompanyModal extends StatefulWidget {
  final Function(String companyName, int money, int meal) onSubmit;

  const AddCompanyModal({super.key, required this.onSubmit});

  @override
  _AddCompanyModalState createState() => _AddCompanyModalState();
}

class _AddCompanyModalState extends State<AddCompanyModal> {
  final _formKey = GlobalKey<FormState>();
  final _companyNameController = TextEditingController();
  final _moneyController = TextEditingController();
  final _mealController = TextEditingController();

  @override
  void dispose() {
    _companyNameController.dispose();
    _moneyController.dispose();
    _mealController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      final companyName = _companyNameController.text.trim();
      final money = int.tryParse(_moneyController.text) ?? 0;
      final meal = int.tryParse(_mealController.text) ?? 0;

      widget.onSubmit(companyName, money, meal);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add Company',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _companyNameController,
                decoration: const InputDecoration(
                  labelText: 'Company Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a company name.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _moneyController,
                decoration: const InputDecoration(
                  labelText: 'Money',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the money.';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _mealController,
                decoration: const InputDecoration(
                  labelText: 'Meal',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the meal.';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
