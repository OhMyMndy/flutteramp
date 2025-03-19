import 'package:serverpod/serverpod.dart' as _i1;

import '../../setlist-fm/models/artist.dart';

class Album implements _i1.TableRow, _i1.ProtocolSerialization {
  @override
  int? id;

  String title;
  String link;
  String? cover;
  String? coverSmall;
  String? coverMedium;
  String? coverBig;
  String? coverXl;
  String? md5Image;
  String releaseDate;
  String recordType;
  bool available;
  String tracklist;
  bool explicitLyrics;
  int timeAdd;
  Artist artist;
  String type;

  Album({
    required this.id,
    required this.title,
    required this.link,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.releaseDate,
    required this.recordType,
    required this.available,
    required this.tracklist,
    required this.explicitLyrics,
    required this.timeAdd,
    required this.artist,
    required this.type,


  });

  factory Album.fromJson(Map<String, dynamic> jsonSerialization) {
    return Album(
      id: jsonSerialization['id'] as int,
      title: jsonSerialization['title'] as String,
      link: jsonSerialization['link'] as String,
      cover: jsonSerialization['cover'] as String,
      coverSmall: jsonSerialization['cover_small'] as String?,
      coverMedium: jsonSerialization['cover_medium'] as String?,
      coverBig: jsonSerialization['cover_big'] as String?,
      coverXl: jsonSerialization['cover_xl'] as String?,
      md5Image: jsonSerialization['md5_image'] as String?,
      releaseDate: jsonSerialization['release_date'] as String,
      recordType: jsonSerialization['record_type'] as String,
      available: jsonSerialization['available'] as bool,
      tracklist: jsonSerialization['tracklist'] as String,
      explicitLyrics: jsonSerialization['explicit_lyrics'] as bool,
      timeAdd: jsonSerialization['time_add'] as int,
      artist: Artist.fromJson(jsonSerialization['artist']),
      type: jsonSerialization['type'] as String,
    );
  }

  @override
  // TODO: implement table
  _i1.Table get table => throw UnimplementedError();

  @override
  toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  toJsonForProtocol() {
    // TODO: implement toJsonForProtocol
    throw UnimplementedError();
  }
}
