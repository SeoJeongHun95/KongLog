// services/company_local_data_source.dart
import 'package:hive/hive.dart';

import '../models/company.dart';

class CompanyLocalDataSource {
  final Box<Company> _box;

  CompanyLocalDataSource(this._box);

  Future<List<Company>> getAllCompanies() async {
    return _box.values.toList();
  }

  Future<void> addCompany(Company company) async {
    await _box.add(company);
  }
}
