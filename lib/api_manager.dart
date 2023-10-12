import 'package:http/http.dart' as http;
class ApiManager {
static void getSources(){
/*
https://newsapi.org/v2/top-headlines/sources?apiKey=98aac02e509a49c9bd28300a83eff56a
 */
Uri url = Uri.https();
http.get(url);
}
 }