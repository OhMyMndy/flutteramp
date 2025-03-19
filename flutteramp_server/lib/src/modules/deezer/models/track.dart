import 'package:serverpod/serverpod.dart' as _i1;

import '../../setlist-fm/models/artist.dart';
import 'album.dart';

class Track implements _i1.TableRow, _i1.ProtocolSerialization {
  @override
  int? id;

  bool readable;
  String title;
  String titleShort;
  String link;
  int duration;
  int rank;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  String preview;
  String md5Image;
  Artist artist;
  Album album;
  String type;

  Track(
      {required this.id,
      required this.readable,
      required this.title,
      required this.titleShort,
      required this.link,
      required this.duration,
      required this.rank,
      required this.explicitLyrics,
      required this.explicitContentLyrics,
      required this.explicitContentCover,
      required this.preview,
      required this.md5Image,
      required this.artist,
      required this.album,
      required this.type});

  factory Track.fromJson(Map<String, dynamic> jsonSerialization) {
    jsonSerialization['album']['artist'] = jsonSerialization['artist'];
    return Track(
      id: jsonSerialization['id'] as int,
      readable: jsonSerialization['readable'] as bool,
      title: jsonSerialization['title'] as String,
      titleShort: jsonSerialization['title_short'] as String,
      link: jsonSerialization['link'] as String,
      duration: jsonSerialization['duration'] as int,
      rank: jsonSerialization['rank'] as int,
      explicitLyrics: jsonSerialization['explicit_lyrics'] as bool,
      explicitContentLyrics:
      jsonSerialization['explicit_content_lyrics'] as int,
      explicitContentCover: jsonSerialization['explicit_content_cover'] as int,
      preview: jsonSerialization['preview'] as String,
      md5Image: jsonSerialization['md5_image'] as String,
      artist: Artist.fromJson(jsonSerialization['artist']),
      album: Album.fromJson(jsonSerialization['album']),
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
