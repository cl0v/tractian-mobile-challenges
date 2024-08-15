import 'package:dio/dio.dart';
import 'package:tractian/src/http/endpoint.dart';

abstract class IAssetDatasource {
  /// I will use only one method for simplicity sake
  Future fetchContent(String id);
}

class AssetDatasourceImpl implements IAssetDatasource {
  final Dio client;

  AssetDatasourceImpl({required this.client});

  @override
  Future fetchContent(String id) async {
    print('Company id $id');
    final locationsReponse = await client.get('$baseUrl/companies/$id/locations');
    final assetsResponse = await client.get('$baseUrl/companies/$id/assets');

    if (locationsReponse.statusCode == 200 &&
        assetsResponse.statusCode == 200) {
      print('locations');
      print(locationsReponse.data);
      print('assets');
      print(assetsResponse.data);
    } else {
      throw Exception("Something unexpected happen!");
    }
  }
}
