/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class DeezerAlbum implements _i1.SerializableModel {
  DeezerAlbum._({
    this.id,
    required this.did,
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

  factory DeezerAlbum({
    int? id,
    required int did,
    required String name,
    required String link,
    required String share,
    required String picture,
    required String pictureSmall,
    required String pictureMedium,
    required String pictureBig,
    required String pictureXl,
    required int nbAlbum,
    required int nbFan,
    required bool radio,
    required String tracklist,
    required String type,
  }) = _DeezerAlbumImpl;

  factory DeezerAlbum.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeezerAlbum(
      id: jsonSerialization['id'] as int?,
      did: jsonSerialization['did'] as int,
      name: jsonSerialization['name'] as String,
      link: jsonSerialization['link'] as String,
      share: jsonSerialization['share'] as String,
      picture: jsonSerialization['picture'] as String,
      pictureSmall: jsonSerialization['pictureSmall'] as String,
      pictureMedium: jsonSerialization['pictureMedium'] as String,
      pictureBig: jsonSerialization['pictureBig'] as String,
      pictureXl: jsonSerialization['pictureXl'] as String,
      nbAlbum: jsonSerialization['nbAlbum'] as int,
      nbFan: jsonSerialization['nbFan'] as int,
      radio: jsonSerialization['radio'] as bool,
      tracklist: jsonSerialization['tracklist'] as String,
      type: jsonSerialization['type'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int did;

  String name;

  String link;

  String share;

  String picture;

  String pictureSmall;

  String pictureMedium;

  String pictureBig;

  String pictureXl;

  int nbAlbum;

  int nbFan;

  bool radio;

  String tracklist;

  String type;

  /// Returns a shallow copy of this [DeezerAlbum]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DeezerAlbum copyWith({
    int? id,
    int? did,
    String? name,
    String? link,
    String? share,
    String? picture,
    String? pictureSmall,
    String? pictureMedium,
    String? pictureBig,
    String? pictureXl,
    int? nbAlbum,
    int? nbFan,
    bool? radio,
    String? tracklist,
    String? type,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'did': did,
      'name': name,
      'link': link,
      'share': share,
      'picture': picture,
      'pictureSmall': pictureSmall,
      'pictureMedium': pictureMedium,
      'pictureBig': pictureBig,
      'pictureXl': pictureXl,
      'nbAlbum': nbAlbum,
      'nbFan': nbFan,
      'radio': radio,
      'tracklist': tracklist,
      'type': type,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DeezerAlbumImpl extends DeezerAlbum {
  _DeezerAlbumImpl({
    int? id,
    required int did,
    required String name,
    required String link,
    required String share,
    required String picture,
    required String pictureSmall,
    required String pictureMedium,
    required String pictureBig,
    required String pictureXl,
    required int nbAlbum,
    required int nbFan,
    required bool radio,
    required String tracklist,
    required String type,
  }) : super._(
          id: id,
          did: did,
          name: name,
          link: link,
          share: share,
          picture: picture,
          pictureSmall: pictureSmall,
          pictureMedium: pictureMedium,
          pictureBig: pictureBig,
          pictureXl: pictureXl,
          nbAlbum: nbAlbum,
          nbFan: nbFan,
          radio: radio,
          tracklist: tracklist,
          type: type,
        );

  /// Returns a shallow copy of this [DeezerAlbum]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DeezerAlbum copyWith({
    Object? id = _Undefined,
    int? did,
    String? name,
    String? link,
    String? share,
    String? picture,
    String? pictureSmall,
    String? pictureMedium,
    String? pictureBig,
    String? pictureXl,
    int? nbAlbum,
    int? nbFan,
    bool? radio,
    String? tracklist,
    String? type,
  }) {
    return DeezerAlbum(
      id: id is int? ? id : this.id,
      did: did ?? this.did,
      name: name ?? this.name,
      link: link ?? this.link,
      share: share ?? this.share,
      picture: picture ?? this.picture,
      pictureSmall: pictureSmall ?? this.pictureSmall,
      pictureMedium: pictureMedium ?? this.pictureMedium,
      pictureBig: pictureBig ?? this.pictureBig,
      pictureXl: pictureXl ?? this.pictureXl,
      nbAlbum: nbAlbum ?? this.nbAlbum,
      nbFan: nbFan ?? this.nbFan,
      radio: radio ?? this.radio,
      tracklist: tracklist ?? this.tracklist,
      type: type ?? this.type,
    );
  }
}
