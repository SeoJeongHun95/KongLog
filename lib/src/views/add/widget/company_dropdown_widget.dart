import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/company.dart';
import '../../../viewmodels/management/company_view_model.dart';

class CompanyDropdownView extends ConsumerStatefulWidget {
  final Function(Company) onSelected;

  const CompanyDropdownView({required this.onSelected, super.key});

  @override
  _CompanyDropdownViewState createState() => _CompanyDropdownViewState();
}

class _CompanyDropdownViewState extends ConsumerState<CompanyDropdownView> {
  Company? _selectedCompany; // 선택된 회사

  @override
  Widget build(BuildContext context) {
    final companiesAsync = ref.watch(companyViewModelProvider);

    return companiesAsync.when(
      data: (companies) => DropdownButton<Company>(
        value: _selectedCompany, // 현재 선택된 항목
        items: companies.map((company) {
          return DropdownMenuItem<Company>(
            value: company,
            child: Text(company.companyName),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            setState(() => _selectedCompany = value); // UI 갱신
            widget.onSelected(value); // 부모 위젯으로 선택된 값을 전달
          }
        },
        hint: const Text('Select a Company'),
      ),
      loading: () => const CircularProgressIndicator(), // 로딩 상태 처리
      error: (error, stack) => Text('Error: $error'), // 에러 상태 처리
    );
  }
}
