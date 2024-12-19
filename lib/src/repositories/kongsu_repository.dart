import '../datasources/local/kongsu_local_data_source.dart';
import '../models/kongsu.dart';

class KongsuRepository {
  final KongsuLocalDataSource _dataSource;

  KongsuRepository(this._dataSource);

  Future<void> addKongsu(Kongsu kongsu) async {
    await _dataSource.addKongsu(kongsu);
  }
}
