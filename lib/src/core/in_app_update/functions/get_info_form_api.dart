import 'package:dio/dio.dart';

import '../model/latest_app_info.dart';

Future<LatestAppInfoAPIModel> getInfoFormAPI() async {
  final response = await Dio().get(
      "https://raw.githubusercontent.com/IsmailHosenIsmailJames/liver_aid/refs/heads/main/info.json");
  if (response.statusCode == 200) {
    try {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
      return LatestAppInfoAPIModel.fromMap(data['result']);
    } catch (e) {
      throw Exception('Failed to get latest app info');
    }
  } else {
    throw Exception('Failed to get latest app info');
  }
}
