import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../datasources/local/kongsu_local_data_source.dart';
import '../models/kongsu.dart';
import '../repositories/kongsu_repository.dart';

part 'kongsu_repository_provider.g.dart';

@riverpod
KongsuRepository kongsuRepository(Ref ref) {
  final box = Hive.box<Kongsu>('kongsuBox');
  final kongsuLocalDataSource = KongsuLocalDataSource(box);
  return KongsuRepository(kongsuLocalDataSource);
}
