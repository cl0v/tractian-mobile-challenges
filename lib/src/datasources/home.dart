import 'package:dio/dio.dart';
import 'package:tractian/src/http/endpoint.dart';

import '../models/unit.dart';

abstract class IHomeDatasource {
  Future<List<UnitModel>> fetchUnits();
}

class HomeDatasourceImpl implements IHomeDatasource {
  final Dio client;

  HomeDatasourceImpl({required this.client});

  @override
  Future<List<UnitModel>> fetchUnits() async {
    final response = await client.get('$baseUrl/companies');

    if (response.statusCode == 200) {
      final data = (response.data as List)
          .map<UnitModel>((un) => UnitModel.fromJson(un))
          .toList();
      return data;
    } else {
      throw Exception("Something unexpected happen!");
    }
  }
}
