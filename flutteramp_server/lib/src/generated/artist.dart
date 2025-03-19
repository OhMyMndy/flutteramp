/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class DeezerArtist implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = DeezerArtistTable();

  static const db = DeezerArtistRepository._();

  @override
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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static DeezerArtistInclude include() {
    return DeezerArtistInclude._();
  }

  static DeezerArtistIncludeList includeList({
    _i1.WhereExpressionBuilder<DeezerArtistTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeezerArtistTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeezerArtistTable>? orderByList,
    DeezerArtistInclude? include,
  }) {
    return DeezerArtistIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DeezerArtist.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DeezerArtist.t),
      include: include,
    );
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

class DeezerArtistTable extends _i1.Table {
  DeezerArtistTable({super.tableRelation}) : super(tableName: 'deezer_artist') {
    did = _i1.ColumnInt(
      'did',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    link = _i1.ColumnString(
      'link',
      this,
    );
    share = _i1.ColumnString(
      'share',
      this,
    );
    picture = _i1.ColumnString(
      'picture',
      this,
    );
    pictureSmall = _i1.ColumnString(
      'pictureSmall',
      this,
    );
    pictureMedium = _i1.ColumnString(
      'pictureMedium',
      this,
    );
    pictureBig = _i1.ColumnString(
      'pictureBig',
      this,
    );
    pictureXl = _i1.ColumnString(
      'pictureXl',
      this,
    );
    nbAlbum = _i1.ColumnInt(
      'nbAlbum',
      this,
    );
    nbFan = _i1.ColumnInt(
      'nbFan',
      this,
    );
    radio = _i1.ColumnBool(
      'radio',
      this,
    );
    tracklist = _i1.ColumnString(
      'tracklist',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
  }

  late final _i1.ColumnInt did;

  late final _i1.ColumnString name;

  late final _i1.ColumnString link;

  late final _i1.ColumnString share;

  late final _i1.ColumnString picture;

  late final _i1.ColumnString pictureSmall;

  late final _i1.ColumnString pictureMedium;

  late final _i1.ColumnString pictureBig;

  late final _i1.ColumnString pictureXl;

  late final _i1.ColumnInt nbAlbum;

  late final _i1.ColumnInt nbFan;

  late final _i1.ColumnBool radio;

  late final _i1.ColumnString tracklist;

  late final _i1.ColumnString type;

  @override
  List<_i1.Column> get columns => [
        id,
        did,
        name,
        link,
        share,
        picture,
        pictureSmall,
        pictureMedium,
        pictureBig,
        pictureXl,
        nbAlbum,
        nbFan,
        radio,
        tracklist,
        type,
      ];
}

class DeezerArtistInclude extends _i1.IncludeObject {
  DeezerArtistInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DeezerArtist.t;
}

class DeezerArtistIncludeList extends _i1.IncludeList {
  DeezerArtistIncludeList._({
    _i1.WhereExpressionBuilder<DeezerArtistTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DeezerArtist.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DeezerArtist.t;
}

class DeezerArtistRepository {
  const DeezerArtistRepository._();

  /// Returns a list of [DeezerArtist]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<DeezerArtist>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeezerArtistTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeezerArtistTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeezerArtistTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DeezerArtist>(
      where: where?.call(DeezerArtist.t),
      orderBy: orderBy?.call(DeezerArtist.t),
      orderByList: orderByList?.call(DeezerArtist.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [DeezerArtist] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<DeezerArtist?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeezerArtistTable>? where,
    int? offset,
    _i1.OrderByBuilder<DeezerArtistTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeezerArtistTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DeezerArtist>(
      where: where?.call(DeezerArtist.t),
      orderBy: orderBy?.call(DeezerArtist.t),
      orderByList: orderByList?.call(DeezerArtist.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [DeezerArtist] by its [id] or null if no such row exists.
  Future<DeezerArtist?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DeezerArtist>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [DeezerArtist]s in the list and returns the inserted rows.
  ///
  /// The returned [DeezerArtist]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<DeezerArtist>> insert(
    _i1.Session session,
    List<DeezerArtist> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DeezerArtist>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [DeezerArtist] and returns the inserted row.
  ///
  /// The returned [DeezerArtist] will have its `id` field set.
  Future<DeezerArtist> insertRow(
    _i1.Session session,
    DeezerArtist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DeezerArtist>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [DeezerArtist]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<DeezerArtist>> update(
    _i1.Session session,
    List<DeezerArtist> rows, {
    _i1.ColumnSelections<DeezerArtistTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DeezerArtist>(
      rows,
      columns: columns?.call(DeezerArtist.t),
      transaction: transaction,
    );
  }

  /// Updates a single [DeezerArtist]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<DeezerArtist> updateRow(
    _i1.Session session,
    DeezerArtist row, {
    _i1.ColumnSelections<DeezerArtistTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DeezerArtist>(
      row,
      columns: columns?.call(DeezerArtist.t),
      transaction: transaction,
    );
  }

  /// Deletes all [DeezerArtist]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<DeezerArtist>> delete(
    _i1.Session session,
    List<DeezerArtist> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DeezerArtist>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [DeezerArtist].
  Future<DeezerArtist> deleteRow(
    _i1.Session session,
    DeezerArtist row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DeezerArtist>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<DeezerArtist>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DeezerArtistTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DeezerArtist>(
      where: where(DeezerArtist.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeezerArtistTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DeezerArtist>(
      where: where?.call(DeezerArtist.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
