import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/home/model/NewsResponse.dart';
import 'package:news/home/model/SourceResponse.dart';
import 'package:news/home/model/api_constants.dart';

class ApiManager {
  static Future<SourceResponse> getSources(String categoryId) async {
/*
https://newsapi.org/v2/top-headlines/sources?apiKey=98aac02e509a49c9bd28300a83eff56a
 */
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApi,
        {'apiKey': '98aac02e509a49c9bd28300a83eff56a', 'category': categoryId});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw (e);
    }
  }

/*
https://newsapi.org/v2/everything?q=bitcoin&apiKey=98aac02e509a49c9bd28300a83eff56a
  */
  static Future<NewsResponse> getNewsBySourceId(String sourceId) async {
    Uri url = Uri.https(
      ApiConstants.baseUrl,
      ApiConstants.newsApi,
      {'apiKey': '98aac02e509a49c9bd28300a83eff56a', 'sources': sourceId},
    );
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw (e);
    }
  }
}
