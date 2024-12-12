// providers/company_repository_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../datasources/company_local_data_source.dart';
import '../models/company.dart';
import '../repositories/company_repository.dart';

final companyRepositoryProvider = Provider<CompanyRepository>((ref) {
  final box = Hive.box<Company>('companyBox');
  final localDataSource = CompanyLocalDataSource(box);
  return CompanyRepository(localDataSource);
});
