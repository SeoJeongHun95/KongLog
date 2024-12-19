import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/kongsu.dart';
import '../../providers/kongsu_repository_provider.dart';
import '../../repositories/kongsu_repository.dart';

part 'kongsu_viewmodel.g.dart';

@riverpod
class KongsuViewmodel extends _$KongsuViewmodel {
  late final KongsuRepository repository;

  @override
  AsyncValue<void> build() {
    repository = ref.watch(kongsuRepositoryProvider);
    return const AsyncValue.data(null); // 초기 상태를 비어 있는 상태로 설정
  }

  Future<void> addKongsu(Kongsu kongsu) async {
    state = await AsyncValue.guard(() async {
      await repository.addKongsu(kongsu);
    });
  }
}
