import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tractian/src/datasources/asset.dart';
import 'package:tractian/src/theme/colors.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBGColor,
        title: const Text(
          'Assets',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: AssetDatasourceImpl(client: Dio()).fetchContent(id),
        builder: (context, snapshot) {
          return Container();
        },
      ),
    );
  }
}
