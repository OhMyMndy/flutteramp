import 'package:flutteramp_server/src/generated/artist.dart';
import 'package:flutteramp_server/src/modules/deezer/models/artist.dart';
import 'package:flutteramp_server/src/modules/deezer/services/deezer_client.dart';
import 'package:flutteramp_server/src/modules/setlist-fm/services/SetlistFmService.dart';
import 'package:flutteramp_server/src/services/deezer_service.dart';
import 'package:test/test.dart';

// Import the generated test helper file, it contains everything you need.
import '../test_tools/serverpod_test_tools.dart';

void main() {
  withServerpod('Test inserting into database', (sessionBuilder, endpoints) {

    final setlistFmService = SetlistFmService("aaa",
        baseUrl: "http://localhost:8009/setlist-fm/rest/1.0");


    var session = sessionBuilder.build();

    var client = DeezerClient();
    var service = DeezerService(client, session);

    test('when inserting artists in the database, no errors occur', () async {


      List<Artist> artists = await client.getUserArtist(userId: 4954552082);

      await service.syncArtistsToDatabase(artists);
      List<DeezerArtist> deezerArtists =
          await DeezerArtist.db.find(session, where: (a) => a.id > 0);

      // Disable this for now, API gets rate limited after a couple of requests.
      // await service.updateArtists();
      // deezerArtists = await DeezerArtist.db.find(session, where: (a) => a.id > 0);
      // print(deezerArtists);
    });

    test('getDeezerTracksFromSetlistFmSetlist', () async {
      var setlist = await setlistFmService.getSetlistsForArtist(
          name: "Shadow of Intent", date: DateTime(2025, 02, 23));
      expect(setlist, isNotEmpty);

      var tracks = await service.getDeezerTracksFromSetlistFmSetlist(setlist[0]);
      expect(tracks.length, 11);
      expect(tracks[0].title, "We Descend...");
      expect(tracks[0].artist.name, "Shadow of Intent");

    });
  });
}
