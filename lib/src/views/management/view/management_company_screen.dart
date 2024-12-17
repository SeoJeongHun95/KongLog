import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/router/bottom_nav_bar.dart';
import '../../../models/company.dart';
import '../../../viewmodels/management/company_view_model.dart';
import '../widget/company_list_widget.dart';
import 'add_company_modal.dart';

class ManagementCompanyScreen extends ConsumerWidget {
  const ManagementCompanyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("업체관리"),
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        scrolledUnderElevation: 0,
        actions: [
          TextButton(
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) => AddCompanyModal(
                  onSubmit: (companyName, money, meal) {
                    log('Company Name: $companyName, Money: $money, Meal: $meal');

                    final newCompany = Company(
                        companyName: companyName, money: money, meal: meal);
                    ref
                        .read(companyViewModelProvider.notifier)
                        .addCompany(newCompany);
                  },
                ),
              );
            },
            child: const Text("추가"),
          ),
        ],
      ),
      body: const SafeArea(child: CompanyListWidget()),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
