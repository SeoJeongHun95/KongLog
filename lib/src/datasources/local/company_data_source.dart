// services/company_local_data_source.dart
import 'package:hive/hive.dart';

import '../../models/company.dart';

class CompanyDataSource {
  CompanyDataSource(this._box);

  final Box<Company> _box;

  // 추가
  Future<void> addCompany(Company company) async {
    await _box.add(company);
  }

  // 읽기
  Future<List<Company>> getAllCompanies() async {
    return _box.values.toList();
  }

  // 업데이트
  Future<void> updateCompany(int index, Company updatedCompany) async {
    if (index >= 0 && index < _box.length) {
      await _box.putAt(index, updatedCompany); // Index로 객체 업데이트
    } else {
      throw Exception('Invalid index $index.');
    }
  }

  // 삭제
  Future<void> deleteCompany(int index) async {
    await _box.deleteAt(index);
  }
}
