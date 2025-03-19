import 'package:serverpod/serverpod.dart' as _i1;

class Artist implements _i1.TableRow, _i1.ProtocolSerialization {

  @override
  int? id;

  final String? mbid;
  final String name;
  final String? sortName;

  final String? picture;
  final String? pictureSmall;
  final String? pictureMedium;
  final String? pictureBig;
  final String? pictureXl;
  final String? tracklist;

  final String? url;

  Artist({
    required this.id,
    required this.mbid,
    required this.name,
    required this.sortName,
    required this.url,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.tracklist,

  });

  factory Artist.fromJson(Map<String, dynamic> jsonSerialization) {
    return Artist(
      id: jsonSerialization['id'] as int?,
      mbid: jsonSerialization['mbid'] as String?,
      name: jsonSerialization['name'] as String,
      sortName: jsonSerialization['sortName'] as String?,
      url: jsonSerialization['url'] as String?,

      picture: jsonSerialization['picture'] as String?,
      pictureSmall: jsonSerialization['picture_small'] as String?,
      pictureMedium: jsonSerialization['picture_medium'] as String?,

      pictureBig: jsonSerialization['picture_big'] as String?,
      pictureXl: jsonSerialization['picture_xl'] as String?,
      tracklist: jsonSerialization['tracklist'] as String?,

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