import 'package:serverpod/serverpod.dart' as _i1;

class Artist implements _i1.TableRow, _i1.ProtocolSerialization {

  @override
  int? id;

  final String mbid;
  final String name;
  final String sortName;

  final String url;

  Artist({
    required this.mbid,
    required this.name,
    required this.sortName,
    required this.url,

  });

  factory Artist.fromJson(Map<String, dynamic> jsonSerialization) {
    return Artist(
      mbid: jsonSerialization['mbid'] as String,
      name: jsonSerialization['name'] as String,
      sortName: jsonSerialization['sortName'] as String,
      url: jsonSerialization['url'] as String,
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