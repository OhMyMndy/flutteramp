import 'package:dio/dio.dart';
import '../models/artist.dart';
import '../helpers.dart';
import '../models/setlist.dart';
import 'package:intl/intl.dart';


class SetlistFmService {
  String apiKey;
  String baseUrl = "https://api.setlist.fm/rest/1.0";

  Dio dio = Dio();

  SetlistFmService(this.apiKey, {String? baseUrl}) {
    if (baseUrl != null) {
      this.baseUrl = baseUrl;
    }

    dio = Dio(BaseOptions(
      baseUrl: this.baseUrl,
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
      headers: {
        'Accept': 'application/json',
        'x-api-key': apiKey,
      },
      validateStatus: (status) => (status ?? 0) >= 0,
    ));
  }

  Future<Artist> getArtist(String name,
      {String? country, int? page = 1}) async {
    name = name.toLowerCase();
    final response = await dio.get('/search/artists', queryParameters: {
      if (country != null) 'country': country,
      'artistName': name,
      'p': page,
      'sort': "sortName"
    });

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;

      for (Map<String, dynamic> artist in jsonResponse["artist"]) {
        var distance = levenshtein(name, artist['name'], caseSensitive: false);

        if (distance <= 3) {
          return Artist.fromJson(artist);
        }
      }
      throw Exception(
          'Cannot find artist "${name}": ${response.statusCode} - ${response.data}');
    } else {
      throw Exception(
          'Failed to search for "${name}": ${response.statusCode} - ${response.data}');
    }
  }

  Future<List<Setlist>> getSetlistsForArtist(
      {String? name,
      String? mbid,
      String? tmid,
      String? cityId,
      String? cityName,
      String? countryCode,
      DateTime? date, // dd-MM-yyyy
      String? venueId,
      String? venueName,
      int? year,
      int? page = 1}) async {
    List<Setlist> result = [];
    final formattedDate = date != null ? DateFormat('dd-MM-yyyy').format(date) : null;
    Response response;
    try {

      response = await dio.get('/search/setlists', queryParameters: {
        if (name != null) 'artistName': name,
        if (mbid != null) 'artistMbid': mbid,
        if (tmid != null) 'artistTmid': tmid,
        if (cityId != null) 'cityId': cityId,
        if (cityName != null) 'cityName': cityName,
        if (countryCode != null) 'countryCode': countryCode,
        if (formattedDate != null) 'date': formattedDate,
        if (venueId != null) 'venueId': venueId,
        if (venueName != null) 'venueName': venueName,
        if (year != null) 'year': year,
        'p': page,
      });

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = response.data;

        for (Map<String, dynamic> setlist in jsonResponse["setlist"]) {
          result.add(Setlist.fromJson(setlist));
        }
      }
      return result;
    } on Exception catch (e) {
      // print(e);
      rethrow;
    }
  }
}
