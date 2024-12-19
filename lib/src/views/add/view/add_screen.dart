import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/company.dart';
import '../../../models/kongsu.dart';
import '../../../viewmodels/add/kongsu_viewmodel.dart';
import '../widget/company_dropdown_widget.dart';

class AddScreen extends ConsumerStatefulWidget {
  const AddScreen({super.key});

  @override
  _KongsuInputViewState createState() => _KongsuInputViewState();
}

class _KongsuInputViewState extends ConsumerState<AddScreen> {
  Company? _selectedCompany;
  final _kongsuUnitController = TextEditingController();
  final _memoController = TextEditingController();
  bool _mealCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CompanyDropdownView(onSelected: (company) {
            setState(() => _selectedCompany = company); // 선택된 회사 업데이트
          }),
          TextField(
            controller: _kongsuUnitController,
            decoration: const InputDecoration(labelText: 'Kongsu Unit'),
          ),
          CheckboxListTile(
            value: _mealCheck,
            onChanged: (value) => setState(() => _mealCheck = value!),
            title: const Text('Meal Check'),
          ),
          TextField(
            controller: _memoController,
            decoration: const InputDecoration(labelText: 'Memo'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_selectedCompany == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('회사를 선택해주세요!')),
                );
                return;
              }

              final kongsu = Kongsu(
                day: DateTime.now(),
                company: _selectedCompany!,
                kongsuUnit: double.parse(_kongsuUnitController.text),
                mealCheck: _mealCheck,
                memo: _memoController.text,
              );

              log("${kongsu.day} ${kongsu.company} ${kongsu.kongsuUnit} ${kongsu.mealCheck} ${kongsu.memo}");

              ref.read(kongsuViewmodelProvider.notifier).addKongsu(kongsu);
              Navigator.pop(context);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Kongsu 저장됨')),
              );
            },
            child: const Text('저장'),
          ),
        ],
      ),
    );
  }
}
