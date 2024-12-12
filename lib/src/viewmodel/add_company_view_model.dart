// viewmodels/company_view_model.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:konglog/src/providers/company_repository_provider.dart';

import '../models/company.dart';
import '../repositories/company_repository.dart';

final companyViewModelProvider =
    StateNotifierProvider<CompanyViewModel, AsyncValue<List<Company>>>((ref) {
  final repository = ref.watch(companyRepositoryProvider);
  return CompanyViewModel(repository);
});

// viewmodels/company_view_model.dart
class CompanyViewModel extends StateNotifier<AsyncValue<List<Company>>> {
  final CompanyRepository repository;

  CompanyViewModel(this.repository) : super(const AsyncValue.loading()) {
    loadCompanies(); // 초기 데이터 로드
  }

  Future<void> loadCompanies() async {
    try {
      final companies = await repository.getAllCompanies();
      state = AsyncValue.data(companies); // 데이터를 성공적으로 로드한 후 상태를 갱신
    } catch (e, st) {
      state = AsyncValue.error(e, st); // 오류 발생 시 상태를 갱신
    }
  }

  Future<void> addCompany(Company company) async {
    try {
      await repository.addCompany(company);
      loadCompanies(); // 데이터를 다시 로드
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
