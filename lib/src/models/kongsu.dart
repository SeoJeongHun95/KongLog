import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'company.dart';

part 'kongsu.freezed.dart';
part 'kongsu.g.dart';

@HiveType(typeId: 1)
@freezed
class Kongsu with _$Kongsu {
  factory Kongsu({
    @HiveField(0) required DateTime day,
    @HiveField(1) required Company company,
    @HiveField(2) required double kongsuUnit,
    @HiveField(3) required bool mealCheck,
    @HiveField(4) required String memo,
  }) = _Kongsu;
}
