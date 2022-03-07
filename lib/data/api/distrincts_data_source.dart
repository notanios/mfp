import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mdf_volunteers/data/models/index.dart';

abstract class DistrictsDataSource {
  Future<List<Distrinct>> getDistricts();
}

class DistrictsDataSourceImpl implements DistrictsDataSource {
  @override
  Future<List<Distrinct>> getDistricts() async {
    final String response =
        await rootBundle.loadString('assets/distrincts.json');
    final data = await json.decode(response);
    var list = List.from(data);
    List<Distrinct> districts = List.from(data).map((e) => Distrinct.fromJson(e)).toList();
    return districts;
  }
}
