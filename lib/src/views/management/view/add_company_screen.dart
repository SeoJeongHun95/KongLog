import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/company.dart';
import '../../../viewmodels/management/company_view_model.dart';
import 'add_company_modal.dart';

class AddCompanyScreen extends ConsumerWidget {
  const AddCompanyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companyState = ref.watch(companyViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Companies')),
      body: companyState.when(
        data: (companies) {
          return ListView.builder(
            itemCount: companies.length,
            itemBuilder: (context, index) {
              final company = companies[index];
              return ListTile(
                title: Text(company.companyName),
                subtitle:
                    Text('Money: \$${company.money}, Meal: ${company.meal}'),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showDialog(
            context: context,
            builder: (context) => AddCompanyModal(
              onSubmit: (companyName, money, meal) {
                // 입력받은 데이터를 처리하는 로직
                print('Company Name: $companyName, Money: $money, Meal: $meal');

                final newCompany =
                    Company(companyName: companyName, money: money, meal: meal);
                ref
                    .read(companyViewModelProvider.notifier)
                    .addCompany(newCompany);
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
