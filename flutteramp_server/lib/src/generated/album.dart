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

abstract class DeezerAlbum implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = DeezerAlbumTable();

  static const db = DeezerAlbumRepository._();

  @override
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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static DeezerAlbumInclude include() {
    return DeezerAlbumInclude._();
  }

  static DeezerAlbumIncludeList includeList({
    _i1.WhereExpressionBuilder<DeezerAlbumTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeezerAlbumTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeezerAlbumTable>? orderByList,
    DeezerAlbumInclude? include,
  }) {
    return DeezerAlbumIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DeezerAlbum.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DeezerAlbum.t),
      include: include,
    );
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

class DeezerAlbumTable extends _i1.Table {
  DeezerAlbumTable({super.tableRelation}) : super(tableName: 'deezer_album') {
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

class DeezerAlbumInclude extends _i1.IncludeObject {
  DeezerAlbumInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DeezerAlbum.t;
}

class DeezerAlbumIncludeList extends _i1.IncludeList {
  DeezerAlbumIncludeList._({
    _i1.WhereExpressionBuilder<DeezerAlbumTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DeezerAlbum.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DeezerAlbum.t;
}

class DeezerAlbumRepository {
  const DeezerAlbumRepository._();

  /// Returns a list of [DeezerAlbum]s matching the given query parameters.
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
  Future<List<DeezerAlbum>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeezerAlbumTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DeezerAlbumTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeezerAlbumTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DeezerAlbum>(
      where: where?.call(DeezerAlbum.t),
      orderBy: orderBy?.call(DeezerAlbum.t),
      orderByList: orderByList?.call(DeezerAlbum.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [DeezerAlbum] matching the given query parameters.
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
  Future<DeezerAlbum?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeezerAlbumTable>? where,
    int? offset,
    _i1.OrderByBuilder<DeezerAlbumTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DeezerAlbumTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DeezerAlbum>(
      where: where?.call(DeezerAlbum.t),
      orderBy: orderBy?.call(DeezerAlbum.t),
      orderByList: orderByList?.call(DeezerAlbum.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [DeezerAlbum] by its [id] or null if no such row exists.
  Future<DeezerAlbum?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DeezerAlbum>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [DeezerAlbum]s in the list and returns the inserted rows.
  ///
  /// The returned [DeezerAlbum]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<DeezerAlbum>> insert(
    _i1.Session session,
    List<DeezerAlbum> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DeezerAlbum>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [DeezerAlbum] and returns the inserted row.
  ///
  /// The returned [DeezerAlbum] will have its `id` field set.
  Future<DeezerAlbum> insertRow(
    _i1.Session session,
    DeezerAlbum row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DeezerAlbum>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [DeezerAlbum]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<DeezerAlbum>> update(
    _i1.Session session,
    List<DeezerAlbum> rows, {
    _i1.ColumnSelections<DeezerAlbumTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DeezerAlbum>(
      rows,
      columns: columns?.call(DeezerAlbum.t),
      transaction: transaction,
    );
  }

  /// Updates a single [DeezerAlbum]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<DeezerAlbum> updateRow(
    _i1.Session session,
    DeezerAlbum row, {
    _i1.ColumnSelections<DeezerAlbumTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DeezerAlbum>(
      row,
      columns: columns?.call(DeezerAlbum.t),
      transaction: transaction,
    );
  }

  /// Deletes all [DeezerAlbum]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<DeezerAlbum>> delete(
    _i1.Session session,
    List<DeezerAlbum> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DeezerAlbum>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [DeezerAlbum].
  Future<DeezerAlbum> deleteRow(
    _i1.Session session,
    DeezerAlbum row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DeezerAlbum>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<DeezerAlbum>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DeezerAlbumTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DeezerAlbum>(
      where: where(DeezerAlbum.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DeezerAlbumTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DeezerAlbum>(
      where: where?.call(DeezerAlbum.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
