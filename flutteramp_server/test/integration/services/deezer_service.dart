import 'package:flutteramp_server/src/generated/artist.dart';
import 'package:flutteramp_server/src/modules/deezer/models/artist.dart';
import 'package:flutteramp_server/src/modules/deezer/services/deezer_client.dart';
import 'package:flutteramp_server/src/services/deezer_service.dart';
import 'package:test/test.dart';

// Import the generated test helper file, it contains everything you need.
import '../test_tools/serverpod_test_tools.dart';

void main() {
  withServerpod('Test inserting into database', (sessionBuilder, endpoints) {
    var session = sessionBuilder.build();
    test('when inserting artists in the database, no errors occur', () async {
      var client = DeezerClient();
      var service = DeezerService(client, session);

      List<Artist> artists = await client.getUserArtist(userId: 4954552082);

      await service.syncArtistsToDatabase(artists);
      List<DeezerArtist> deezerArtists =
          await DeezerArtist.db.find(session, where: (a) => a.id > 0);

      // Disable this for now, API gets rate limited after a couple of requests.
      // await service.updateArtists();
      // deezerArtists = await DeezerArtist.db.find(session, where: (a) => a.id > 0);
      // print(deezerArtists);
    });
  });
}
