import 'dart:convert';
import 'dart:developer';

import 'package:celloip_practical/model/list_data_model.dart';
import 'package:http/http.dart' as http;


class JobService {

  final String url = "https://reqres.in/api/users?delay=3";

  Future<JobListDataModel?> getJobService()   async {

    try {
      final response = await http.get(
        Uri.parse(url), headers: {"Content-Type": "application/json"},);

      log("job list response == ${response.statusCode} && ${response.body}");

      if (response.statusCode == 200) {
        return JobListDataModel.fromJson(jsonDecode(response.body));
      } else {
        return JobListDataModel();
      }
    } catch (e) {
      print("exception error  == $e");
    }
  }


}