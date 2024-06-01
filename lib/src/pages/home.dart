import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tractian/src/datasources/home.dart';
import 'package:tractian/src/models/unit.dart';
import 'package:tractian/src/pages/asset.dart';

import '../theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBGColor,
        title: const Text(
          'TRACTIAN',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      // I want to use FutureBuilder since no state management is required for sake of simplicity
      body: FutureBuilder<List<UnitModel>>(
          future: HomeDatasourceImpl(client: Dio()).fetchUnits(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else if (snapshot.hasData) {
              return ListView(
                children: snapshot.data
                        ?.map(
                          (un) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 16,
                            ),
                            child: _UnitContentWidget(
                              unit: un,
                            ),
                          ),
                        )
                        .toList() ??
                    [],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class _UnitContentWidget extends StatelessWidget {
  const _UnitContentWidget({
    required this.unit,
  });

  final UnitModel unit;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      leading: Image.asset("assets/blocks.png"),
      title: Text(
        "${unit.name} Unit",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      tileColor: unitTileColor,
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => AssetPage(
              id: unit.id,
            ),
          )),
    );
  }
}
