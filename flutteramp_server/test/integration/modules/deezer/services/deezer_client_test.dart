import 'package:flutteramp_server/src/modules/deezer/models/artist.dart';
import 'package:flutteramp_server/src/modules/deezer/services/deezer_client.dart';
import 'package:test/test.dart';

Future<void> main() async {
  DeezerClient client = DeezerClient(baseUrl: "http://localhost:8009/deezer/");

  test('DeezerClient can get Artist', () async {
    Artist? artist = await client.getArtistByName("Annisokay");
    expect(artist, isNotNull);
    expect(artist!.id, isNotNull);
    expect(artist.name, equals("Annisokay"));

    Artist? artistFromId = await client.getArtistById(artist.id!);
    expect(artistFromId, isNotNull);
    expect(artistFromId!.id, isNotNull);
  });

  test('DeezerClient get user artists', () async {
    // TODO: get without user ID and oauth token
    List<Artist> artists = await client.getUserArtist(userId: 4954552082);
    expect(artists, isNotEmpty);
  });
}
