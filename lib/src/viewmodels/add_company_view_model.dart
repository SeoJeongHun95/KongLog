import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/company.dart';
import '../providers/company_repository_provider.dart';
import '../repositories/company_repository.dart';

part 'add_company_view_model.g.dart';

@riverpod
class CompanyViewModel extends _$CompanyViewModel {
  late final CompanyRepository repository;

  @override
  AsyncValue<List<Company>> build() {
    repository = ref.watch(companyRepositoryProvider);
    loadCompanies();
    return const AsyncValue.loading();
  }

  Future<void> loadCompanies() async {
    state = await AsyncValue.guard(() async {
      return await repository.getAllCompanies();
    });
  }

  Future<void> addCompany(Company company) async {
    state = await AsyncValue.guard(() async {
      await repository.addCompany(company);
      return await repository.getAllCompanies();
    });
  }
}
