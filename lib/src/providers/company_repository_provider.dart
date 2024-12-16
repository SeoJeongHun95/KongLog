// providers/company_repository_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../datasources/local/company_data_source.dart';
import '../models/company.dart';
import '../repositories/company_repository.dart';

part 'company_repository_provider.g.dart';

// riverpod 1.0
// final companyRepositoryProvider = Provider<CompanyRepository>((ref) {
//   final box = Hive.box<Company>('companyBox');
//   final localDataSource = CompanyLocalDataSource(box);
//   return CompanyRepository(localDataSource);
// });

// riverpod 2.0 with code generate
@riverpod
CompanyRepository companyRepository(Ref ref) {
  final box = Hive.box<Company>('companyBox');
  final localDataSource = CompanyDataSource(box);
  return CompanyRepository(localDataSource);
}

//박스를 열음
// 급박스를 data영역의 box를 컨트롤할수있는 거로 티턴을함