import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = "AIzaSyCWNdYldigVkhZIVkNlkokjO4VVJ8YKPTo";
  Future<String> getPlaceId(String input) async {
    final String url =
        "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key";
    var response = await http.get(Uri.parse(url));
    var encodeFirst = convert.jsonEncode(response.body);
    var json = convert.jsonDecode(encodeFirst);
    var placeId = json['candidates'][0]['place_id'] as String;
    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final placeId = await getPlaceId(input);
    final String url =
        "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?place_id=$placeId&inputtype=textquery&key=$key";
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var results = json['result'] as Map<String, dynamic>;
    return results;
  }
}
