import 'package:serverpod/serverpod.dart' as _i1;

class Artist implements _i1.TableRow, _i1.ProtocolSerialization {
  @override
  int? id;

  String name;
  String link;
  String? share;
  String? picture;
  String? pictureSmall;
  String? pictureMedium;
  String? pictureBig;
  String? pictureXl;
  int? nbAlbum;
  int? nbFan;
  bool? radio;
  String tracklist;
  String type;

  Artist({
    required this.id,
    required this.name,
    required this.link,
    required this.share,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.nbAlbum,
    required this.nbFan,
    required this.radio,
    required this.tracklist,
    required this.type,
  });

  factory Artist.fromJson(Map<String, dynamic> jsonSerialization) {
    return Artist(
      id: jsonSerialization['id'] as int,
      name: jsonSerialization['name'] as String,
      link: jsonSerialization['link'] as String,
      share: jsonSerialization['share'] as String?,
      picture: jsonSerialization['picture'] as String,
      pictureSmall: jsonSerialization['picture_small'] as String?,
      pictureMedium: jsonSerialization['picture_medium'] as String?,
      pictureBig: jsonSerialization['picture_big'] as String?,
      pictureXl: jsonSerialization['picture_xl'] as String?,
      nbAlbum: jsonSerialization['nb_album'] as int?,
      nbFan: jsonSerialization['nb_fan'] as int?,
      radio: jsonSerialization['radio'] as bool?,
      tracklist: jsonSerialization['tracklist'] as String,
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
