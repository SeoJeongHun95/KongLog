import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../viewmodels/management/company_view_model.dart';
import 'company_tile_widget.dart';

class CompanyListWidget extends ConsumerWidget {
  const CompanyListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companyState = ref.watch(companyViewModelProvider);

    return companyState.when(
      data: (companies) {
        return ListView.builder(
          itemCount: companies.length,
          itemBuilder: (context, index) {
            final company = companies[index];
            return CompanyTile(
              company: company,
              onDelete: () async {
                await ref
                    .read(companyViewModelProvider.notifier)
                    .deleteCompany(index);
              },
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: $e')),
    );
  }
}
