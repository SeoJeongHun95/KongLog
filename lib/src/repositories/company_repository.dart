// repositories/company_repository.dart
import '../datasources/company_local_data_source.dart';
import '../models/company.dart';

class CompanyRepository {
  final CompanyLocalDataSource localDataSource;

  CompanyRepository(this.localDataSource);

  Future<List<Company>> getAllCompanies() async {
    return localDataSource.getAllCompanies();
  }

  Future<void> addCompany(Company company) async {
    return localDataSource.addCompany(company);
  }
}
