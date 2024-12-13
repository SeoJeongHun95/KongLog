// repositories/company_repository.dart
import '../datasources/local/company_data_source.dart';
import '../models/company.dart';

class CompanyRepository {
  CompanyRepository(this.localDataSource);

  final CompanyDataSource localDataSource;

  Future<void> addCompany(Company company) async {
    return localDataSource.addCompany(company);
  }

  Future<List<Company>> getAllCompanies() async {
    return localDataSource.getAllCompanies();
  }
  //await 를 사용해도 코드는 동일하게 동작
  //await localDataSource.getAllCompanies();

  Future<void> updateCompany(int index, Company updatedCompany) async {
    return localDataSource.updateCompany(index, updatedCompany);
  }

  Future<void> deleteCompany(int index) async {
    return localDataSource.deleteCompany(index);
  }
}
