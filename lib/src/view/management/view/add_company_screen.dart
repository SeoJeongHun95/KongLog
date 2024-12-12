// views/company_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/company.dart';
import '../../../viewmodel/add_company_view_model.dart';

// views/company_screen.dart
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
        error: (e, stack) => Center(child: Text('Error: $e')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newCompany =
              Company(companyName: 'New Company', money: 100000, meal: 50);
          ref.read(companyViewModelProvider.notifier).addCompany(newCompany);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
