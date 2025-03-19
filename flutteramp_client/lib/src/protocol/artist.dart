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

abstract class DeezerArtist implements _i1.SerializableModel {
  DeezerArtist._({
    this.id,
    required this.did,
    required this.name,
    required this.link,
    this.share,
    this.picture,
    this.pictureSmall,
    this.pictureMedium,
    this.pictureBig,
    this.pictureXl,
    this.nbAlbum,
    this.nbFan,
    this.radio,
    this.tracklist,
    required this.type,
  });

  factory DeezerArtist({
    int? id,
    required int did,
    required String name,
    required String link,
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
    required String type,
  }) = _DeezerArtistImpl;

  factory DeezerArtist.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeezerArtist(
      id: jsonSerialization['id'] as int?,
      did: jsonSerialization['did'] as int,
      name: jsonSerialization['name'] as String,
      link: jsonSerialization['link'] as String,
      share: jsonSerialization['share'] as String?,
      picture: jsonSerialization['picture'] as String?,
      pictureSmall: jsonSerialization['pictureSmall'] as String?,
      pictureMedium: jsonSerialization['pictureMedium'] as String?,
      pictureBig: jsonSerialization['pictureBig'] as String?,
      pictureXl: jsonSerialization['pictureXl'] as String?,
      nbAlbum: jsonSerialization['nbAlbum'] as int?,
      nbFan: jsonSerialization['nbFan'] as int?,
      radio: jsonSerialization['radio'] as bool?,
      tracklist: jsonSerialization['tracklist'] as String?,
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

  String? share;

  String? picture;

  String? pictureSmall;

  String? pictureMedium;

  String? pictureBig;

  String? pictureXl;

  int? nbAlbum;

  int? nbFan;

  bool? radio;

  String? tracklist;

  String type;

  /// Returns a shallow copy of this [DeezerArtist]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DeezerArtist copyWith({
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
      if (share != null) 'share': share,
      if (picture != null) 'picture': picture,
      if (pictureSmall != null) 'pictureSmall': pictureSmall,
      if (pictureMedium != null) 'pictureMedium': pictureMedium,
      if (pictureBig != null) 'pictureBig': pictureBig,
      if (pictureXl != null) 'pictureXl': pictureXl,
      if (nbAlbum != null) 'nbAlbum': nbAlbum,
      if (nbFan != null) 'nbFan': nbFan,
      if (radio != null) 'radio': radio,
      if (tracklist != null) 'tracklist': tracklist,
      'type': type,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DeezerArtistImpl extends DeezerArtist {
  _DeezerArtistImpl({
    int? id,
    required int did,
    required String name,
    required String link,
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

  /// Returns a shallow copy of this [DeezerArtist]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DeezerArtist copyWith({
    Object? id = _Undefined,
    int? did,
    String? name,
    String? link,
    Object? share = _Undefined,
    Object? picture = _Undefined,
    Object? pictureSmall = _Undefined,
    Object? pictureMedium = _Undefined,
    Object? pictureBig = _Undefined,
    Object? pictureXl = _Undefined,
    Object? nbAlbum = _Undefined,
    Object? nbFan = _Undefined,
    Object? radio = _Undefined,
    Object? tracklist = _Undefined,
    String? type,
  }) {
    return DeezerArtist(
      id: id is int? ? id : this.id,
      did: did ?? this.did,
      name: name ?? this.name,
      link: link ?? this.link,
      share: share is String? ? share : this.share,
      picture: picture is String? ? picture : this.picture,
      pictureSmall: pictureSmall is String? ? pictureSmall : this.pictureSmall,
      pictureMedium:
          pictureMedium is String? ? pictureMedium : this.pictureMedium,
      pictureBig: pictureBig is String? ? pictureBig : this.pictureBig,
      pictureXl: pictureXl is String? ? pictureXl : this.pictureXl,
      nbAlbum: nbAlbum is int? ? nbAlbum : this.nbAlbum,
      nbFan: nbFan is int? ? nbFan : this.nbFan,
      radio: radio is bool? ? radio : this.radio,
      tracklist: tracklist is String? ? tracklist : this.tracklist,
      type: type ?? this.type,
    );
  }
}
