import 'package:freezed_annotation/freezed_annotation.dart';

part 'catfactmodel.freezed.dart';
part 'catfactmodel.g.dart';

@freezed
class CatFactModel with _$CatFactModel {
  factory CatFactModel({required String fact, required int length}) =
      _CatFactModel;

  factory CatFactModel.fromJson(Map<String, dynamic> json) =>
      _$CatFactModelFromJson(json);
}
