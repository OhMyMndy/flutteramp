import 'package:dio/dio.dart';
import 'package:sprintf/sprintf.dart';

import '../models/album.dart';
import '../models/artist.dart';
import '../helpers.dart';
import '../models/track.dart';
class DeezerClient {
  // implements ConnectorClient {

  Dio dio = Dio();
  int? userId;

  String? apiKey;
  String baseUrl = "https://api.deezer.com/";

  DeezerClient({String? apiKey, String? baseUrl}) {
    this.apiKey = this.apiKey;
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

  Future<List<Artist>> getUserArtist({int? userId}) async {
    String id = (userId != null) ? userId.toString() : "me";
    List<Artist> artists = [];
    int? index = 0;
    while (true) {
      final response = await dio.request(
        sprintf('/user/%s/artists', [id]),
        queryParameters: {
          "index": index,
        },
        options: Options(method: 'GET'),
      );
      if (response.statusCode != 200) {
        throw Exception(sprintf("Error when getting artist for user '%s': %s",
            [id, response.toString()]));
      }
      var data = response.data;
      var error = data["error"];
      if (error != null) {
        throw Exception(sprintf(
            "Error when getting artists for user '%s': %s", [id, error]));
      }

      if (data["data"] is Iterable) {
        for (var artist in data["data"]) {
          artists.add(Artist.fromJson(artist));
        }
      }
      if (data["next"] != null) {
        Uri uri = Uri.parse(data["next"]);
        bool indexKey = uri.queryParameters.containsKey('index');
        if (indexKey) {
          index = int.parse(uri.queryParameters['index']!);
        } else {
          break;
        }
      } else {
        break;
      }
    }

    return artists;
  }

  Future<Artist?> getArtistById(int id) async {
    final response = await dio.request(
      sprintf('/artist/%i', [id]),
      options: Options(method: 'GET'),
    );
    if (response.statusCode != 200 || response.data['error'] != null) {
      throw Exception(sprintf("Error when getting artist with id '%s': %s",
          [id, response.toString()]));
    }

    return Artist.fromJson(response.data);
  }

  Future<Artist?> getArtistByName(String name) async {
    final response = await dio.request(
      '/search/artist/',
      options: Options(method: 'GET'),
      queryParameters: {
        "q": name
      }
    );

    if (response.statusCode != 200) {
      throw Exception(sprintf("Error when getting artist with name '%s': %s",
          [name, response.toString()]));
    }
    var artists = response.data;
    var firstArtist = artists["data"]?[0];
    if (firstArtist == null) {
      throw Exception(sprintf("Artist with name '%s' not found...", [name]));
    }
    return Artist.fromJson(firstArtist);
  }

  Future<List<Album>> getUserAlbums({required int userId}) async {
    String id = userId.toString();
    List<Album> albums = [];

    int? index = 0;
    while (true) {
      final response = await dio.request(
        sprintf('/user/%s/albums', [id]),
        queryParameters: {
          "index": index,
        },
        options: Options(method: 'GET'),
      );
      if (response.statusCode != 200) {
        throw Exception(sprintf("Error when getting artist for user '%s': %s",
            [id, response.toString()]));
      }
      var data = response.data;
      var error = data["error"];
      if (error != null) {
        throw Exception(sprintf(
            "Error when getting albums for user '%s': %s", [id, error]));
      }

      if (data["data"] is Iterable) {
        for (var album in data["data"]) {
          albums.add(Album.fromJson(album));
        }
      }
      if (data["next"] != null) {
        Uri uri = Uri.parse(data["next"]);
        bool indexKey = uri.queryParameters.containsKey('index');
        if (indexKey) {
          index = int.parse(uri.queryParameters['index']!);
        } else {
          break;
        }
      } else {
        break;
      }
    }

    return albums;
  }

  Future<Track?> getTrack(String name, String artist) async {
    String q = sprintf("%s - %s", [artist, name]);
    final response = await dio.request(
      '/search/track/',
      options: Options(method: 'GET'),
      queryParameters: {
        "q": q
      }
    );


    if (response.statusCode != 200) {
      throw Exception(sprintf("Error when getting artist with name '%s': %s",
          [name, response.toString()]));
    }

    for (var trackItem in response.data["data"]) {
      var track = Track.fromJson(trackItem);

      if (levenshtein(trackItem["title"], name) < 3 && levenshtein(trackItem['artist']['name'], artist) < 3) {
        return track;
      }
    }

    return null;
  }
}
