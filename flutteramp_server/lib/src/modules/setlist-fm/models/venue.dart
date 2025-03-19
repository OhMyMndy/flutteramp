import 'package:serverpod/serverpod.dart' as _i1;


class Country implements _i1.TableRow, _i1.ProtocolSerialization {
  @override
  int? id;


  final String code;
  final String name;

  Country({
    this.id,
    required this.code,
    required this.name,
  });

  factory Country.fromJson(Map<String, dynamic> jsonSerialization) {
    return Country(
      // id: int.parse(jsonSerialization['id'], radix: 16),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
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

class City implements _i1.TableRow, _i1.ProtocolSerialization {
  @override
  int? id;


  final String name;
  final String? state;
  final String? stateCode;

  final Country country;

  final double? lat;
  final double? long;


  City({
    required this.id,
    required this.name,
    required this.state,
    required this.stateCode,
    required this.lat,
    required this.country,
    this.long

  });



  factory City.fromJson(Map<String, dynamic> jsonSerialization) {
    return City(
      id: int.parse(jsonSerialization['id'], radix: 16),
      name: jsonSerialization['name'] as String,
      state: jsonSerialization['state'] as String?,
      stateCode: jsonSerialization['stateCode'] as String?,
      country: Country.fromJson(jsonSerialization['country']),
      lat: jsonSerialization['coords']['lat'] as double?,
      long: jsonSerialization['coords']['long'] as double?,
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



class Venue implements _i1.TableRow, _i1.ProtocolSerialization {

  @override
  int? id;

  final String name;
  final City city;
  final String? url;


  Venue({
    required this.id,
    required this.name,
    required this.city,
    required this.url,
  });

  factory Venue.fromJson(Map<String, dynamic> jsonSerialization) {
    return Venue(
      id: int.parse(jsonSerialization['id'], radix: 16),
      name: jsonSerialization['name'] as String,
      city: City.fromJson(jsonSerialization['city']),
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