import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@HiveType(typeId: 0)
@freezed
class Company with _$Company {
  factory Company({
    @HiveField(0) required final String companyName,
    @HiveField(1) required final int money,
    @HiveField(2) required final int meal,
  }) = _Company;
}
