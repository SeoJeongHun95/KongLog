import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/company.dart';
import '../../providers/company_repository_provider.dart';
import '../../repositories/company_repository.dart';

part 'company_view_model.g.dart';

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

      final currentCompanies = state.value ?? [];
      currentCompanies.add(company);

      return currentCompanies;
    });
  }

  Future<void> updateCompany(int index, Company company) async {
    state = await AsyncValue.guard(() async {
      await repository.updateCompany(index, company);

      final currentCompanies = state.value ?? [];
      currentCompanies.removeAt(index);
      currentCompanies.insert(index, company);

      return currentCompanies;
    });
  }

  Future<void> deleteCompany(int index) async {
    state = await AsyncValue.guard(
      () async {
        await repository.deleteCompany(index);

        final currentCompanies = state.value ?? [];
        currentCompanies.removeAt(index);

        return currentCompanies;
      },
    );
  }

  // Future<void> addCompany(Company company) async {
  //   state = await AsyncValue.guard(() async {
  //     await repository.addCompany(company);
  //     return await repository.getAllCompanies();
  //   });
  // }

  // Future<void> updateCompany(int index, Company company) async {
  //   state = await AsyncValue.guard(() async {
  //     await repository.updateCompany(index, company);
  //     return await repository.getAllCompanies();
  //   });
  // }

  // Future<void> deleteCompany(int index) async {
  //   state = await AsyncValue.guard(
  //     () async {
  //       await repository.deleteCompany(index);
  //       return await repository.getAllCompanies();
  //     },
  //   );
  // }
}
