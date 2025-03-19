import 'package:serverpod/serverpod.dart' as _i1;

import 'artist.dart';
import 'venue.dart';

class Setlist implements _i1.TableRow, _i1.ProtocolSerialization {
  @override
  int? id;

  final String versionId;
  final String eventDate;
  final String lastUpdated;

  final Artist artist;
  final Venue venue;

  final Map<String, List<String>> setlist;

  Setlist({
    required this.id,
    required this.versionId,
    required this.eventDate,
    required this.lastUpdated,
    required this.artist,
    required this.venue,
    required this.setlist,
  });

  factory Setlist.fromJson(Map<String, dynamic> jsonSerialization) {
    Map<String, List<String>> setlist = {};
    for (var set in List.castFrom(jsonSerialization['sets']['set'])) {
      List<String> songsList = [];
      String? name = set['name'];
      name ??= setlist.length.toString();
      for (var song in set['song']) {
        var name;
        if (song['name'] != null) {
          name = song["name"];
        }
        if (song['info'] != null) {
          name = "$name (${song['info']})";
        }
        songsList.add(name);
      }
      setlist[name] = songsList;
    }
    return Setlist(
      id: int.parse(jsonSerialization['id'], radix: 16) as int?,
      versionId: jsonSerialization['versionId'] as String,
      eventDate: jsonSerialization['eventDate'] as String,
      lastUpdated: jsonSerialization['lastUpdated'] as String,
      artist: Artist.fromJson(jsonSerialization['artist']),
      venue: Venue.fromJson(jsonSerialization['venue']),
      setlist: setlist,
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
