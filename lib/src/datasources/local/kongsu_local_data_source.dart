import 'package:hive/hive.dart';

import '../../models/kongsu.dart';

class KongsuLocalDataSource {
  final Box<Kongsu> _box;

  KongsuLocalDataSource(this._box);

  Future<void> addKongsu(Kongsu kongsu) async {
    await _box.add(kongsu);
  }

  Future<List<Kongsu>> getAllKongsus() async {
    return _box.values.toList();
  }

  Future<void> updateKongsu(int index, Kongsu updateKongsu) async {
    if (index >= 0 && index < _box.length) {
      await _box.putAt(index, updateKongsu);
    } else {
      throw Exception('Invalid index $index.');
    }
  }

  Future<void> deleteKongsu(int index) async {
    await _box.deleteAt(index);
  }
}
